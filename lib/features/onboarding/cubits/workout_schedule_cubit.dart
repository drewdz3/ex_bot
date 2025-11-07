import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_schedule_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class WorkoutScheduleCubit extends Cubit<WorkoutScheduleState> {
  final UserRepository _userRepository;

  late UserPreferences _preferences;

  WorkoutScheduleCubit(this._userRepository) : super(const WorkoutScheduleState.initial());

  Future<void> initialize() async {
    try {
      _preferences = await _userRepository.getPreferences(null);
      emit(
        WorkoutScheduleState.loaded(
          frequency: _preferences.workoutsPerWeek,
          duration: _preferences.workoutDurationMinutes,
        ),
      );
    } catch (e) {
      DebugLogger.error('(WorkoutScheduleCubit.initialize) Error: ', e);
      emit(WorkoutScheduleState.error(message: AppConstants.unknownError));
    }
  }

  void updateFrequency(int? frequency) {
    if (state is WorkoutScheduleStateLoaded) {
      final loaded = (state as WorkoutScheduleStateLoaded);
      emit(WorkoutScheduleState.loaded(frequency: frequency, duration: loaded.duration));
    } else {
      emit(WorkoutScheduleState.loaded(frequency: frequency));
    }
  }

  void updateDuration(int? duration) {
    if (state is WorkoutScheduleStateLoaded) {
      final loaded = (state as WorkoutScheduleStateLoaded);
      emit(WorkoutScheduleState.loaded(frequency: loaded.frequency, duration: duration));
    } else {
      emit(WorkoutScheduleState.loaded(duration: duration));
    }
  }

  bool get canContinue {
    if (state is WorkoutScheduleStateLoaded) {
      final loaded = (state as WorkoutScheduleStateLoaded);

      return (loaded.frequency != null) && (loaded.duration != null);
    } else {
      return false;
    }
  }

  Future<void> save() async {
    if (state is! WorkoutScheduleStateLoaded) return;
    try {
      final currentState = (state as WorkoutScheduleStateLoaded);
      _preferences = _preferences.copyWith(
        workoutsPerWeek: currentState.frequency!,
        workoutDurationMinutes: currentState.duration!,
        onboardingPath: RouteConstants.onboardingLimitations,
      );
      await _userRepository.updatePreferences(_preferences);
      emit(WorkoutScheduleState.next(path: RouteConstants.onboardingLimitations));
    } catch (e) {
      DebugLogger.error('(WorkoutScheduleCubit.save) Error: ', e);
      emit(WorkoutScheduleState.error(message: AppConstants.saveError));
    }
  }
}
