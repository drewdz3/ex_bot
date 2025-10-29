import 'package:ex_bot/data/models/workout_type.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_schedule_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class WorkoutScheduleCubit extends Cubit<WorkoutScheduleState> {
  // final List<WorkoutType> workoutTypes;

  WorkoutScheduleCubit() : super(const WorkoutScheduleState.initial());

  void updateFrequency(int? frequency) {
    if (state is Loaded) {
      final loaded = (state as Loaded);
      emit(WorkoutScheduleState.loaded(frequency: frequency, duration: loaded.duration));
    } else {
      emit(WorkoutScheduleState.loaded(frequency: frequency));
    }
  }

  void updateDuration(int? duration) {
    if (state is Loaded) {
      final loaded = (state as Loaded);
      emit(WorkoutScheduleState.loaded(frequency: loaded.frequency, duration: duration));
    } else {
      emit(WorkoutScheduleState.loaded(duration: duration));
    }
  }

  bool get canContinue {
    if (state is Loaded) {
      final loaded = (state as Loaded);

      return (loaded.frequency != null) && (loaded.duration != null);
    } else {
      return false;
    }
  }

  Map<String, dynamic> get scheduleData {
    if (state is Loaded) {
      final loaded = (state as Loaded);
      return {'frequency': loaded.frequency, 'duration': loaded.duration};
    } else {
      return {};
    }
  }
}
