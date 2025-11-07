import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_schedule_state.freezed.dart';

@freezed
class WorkoutScheduleState with _$WorkoutScheduleState {
  const factory WorkoutScheduleState.initial() = WorkoutScheduleStateInitial;
  const factory WorkoutScheduleState.loaded({int? frequency, int? duration}) = WorkoutScheduleStateLoaded;
  const factory WorkoutScheduleState.error({required String message}) = WorkoutScheduleStateError;
  const factory WorkoutScheduleState.next({required String path}) = WorkoutScheduleStateNext;
  const factory WorkoutScheduleState.complete() = WorkoutScheduleStateComplete;
}
