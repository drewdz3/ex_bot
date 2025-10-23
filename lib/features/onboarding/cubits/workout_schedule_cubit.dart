import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'workout_schedule_cubit.freezed.dart';

@freezed
class WorkoutScheduleState with _$WorkoutScheduleState {
  const factory WorkoutScheduleState.initial() = _Initial;
  const factory WorkoutScheduleState.loaded({int? frequency, int? duration}) = _Loaded;
}

@injectable
class WorkoutScheduleCubit extends Cubit<WorkoutScheduleState> {
  WorkoutScheduleCubit() : super(const WorkoutScheduleState.initial());

  void updateFrequency(int? frequency) {
    state.maybeWhen(
      loaded: (_, duration) => emit(WorkoutScheduleState.loaded(frequency: frequency, duration: duration)),
      orElse: () => emit(WorkoutScheduleState.loaded(frequency: frequency)),
    );
  }

  void updateDuration(int? duration) {
    state.maybeWhen(
      loaded: (frequency, _) => emit(WorkoutScheduleState.loaded(frequency: frequency, duration: duration)),
      orElse: () => emit(WorkoutScheduleState.loaded(duration: duration)),
    );
  }

  bool get canContinue {
    return state.maybeWhen(loaded: (frequency, duration) => frequency != null && duration != null, orElse: () => false);
  }

  Map<String, dynamic> get scheduleData {
    return state.maybeWhen(
      loaded: (frequency, duration) => {'frequency': frequency, 'duration': duration},
      orElse: () => {},
    );
  }
}
