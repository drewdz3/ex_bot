import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/models/equipment.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/data/models/workout_type.dart';
import 'package:ex_bot/domain/repositories/lookup_repository.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_preference_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// Cubit for managing workout preferences during onboarding
@injectable
class WorkoutPreferencesCubit extends Cubit<WorkoutPreferencesState> {
  final LookupRepository _lookupRepository;
  final UserRepository _userRepository;

  WorkoutPreferencesCubit(this._lookupRepository, this._userRepository)
    : super(const WorkoutPreferencesState.initial());

  late List<WorkoutType> workoutTypes = [];
  late List<Equipment> equipment = [];
  late UserPreferences _preferences;

  Future<void> initialize() async {
    workoutTypes = await _lookupRepository.getWorkoutTypes();
    equipment = await _lookupRepository.getEquipment();
    _preferences = await _userRepository.getPreferences(null);
    emit(
      WorkoutPreferencesState.loaded(
        workoutTypes: _preferences.preferredWorkoutTypes.toSet(),
        availableEquipment: _preferences.availableEquipment.toSet(),
      ),
    );
  }

  void updateWorkoutTypes(Set<String> selectedWorkouts) {
    if (state is WorkoutPreferencesStateLoaded) {
      final loaded = (state as WorkoutPreferencesStateLoaded);
      emit(
        WorkoutPreferencesState.loaded(workoutTypes: selectedWorkouts, availableEquipment: loaded.availableEquipment),
      );
    } else {
      emit(WorkoutPreferencesState.loaded(workoutTypes: selectedWorkouts, availableEquipment: const {}));
    }
  }

  void updateEquipment(Set<String> selectedEquipment) {
    if (state is WorkoutPreferencesStateLoaded) {
      final loaded = (state as WorkoutPreferencesStateLoaded);
      emit(WorkoutPreferencesState.loaded(workoutTypes: loaded.workoutTypes, availableEquipment: selectedEquipment));
    } else {
      emit(WorkoutPreferencesState.loaded(workoutTypes: const {}, availableEquipment: selectedEquipment));
    }
  }

  bool get canContinue {
    if (state is WorkoutPreferencesStateLoaded) {
      final loaded = (state as WorkoutPreferencesStateLoaded);
      return loaded.workoutTypes.isNotEmpty;
    } else {
      return false;
    }
  }

  Future<void> save() async {
    if (state is! WorkoutPreferencesStateLoaded) return;
    try {
      final currentState = state as WorkoutPreferencesStateLoaded;
      _preferences = _preferences.copyWith(
        preferredWorkoutTypes: currentState.workoutTypes.toList(),
        availableEquipment: currentState.availableEquipment.toList(),
        onboardingPath: RouteConstants.onboardingSchedule,
      );
      await _userRepository.updatePreferences(_preferences);
      emit(WorkoutPreferencesState.next(path: RouteConstants.onboardingSchedule));
    } catch (e) {
      DebugLogger.error('Error preparing preferences for saving: $e');
      emit(WorkoutPreferencesState.error(message: AppConstants.saveError));
    }
  }
}
