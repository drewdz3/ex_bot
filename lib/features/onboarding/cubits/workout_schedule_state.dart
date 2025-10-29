import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_schedule_state.freezed.dart';

@freezed
class WorkoutScheduleState with _$WorkoutScheduleState {
  const factory WorkoutScheduleState.initial() = Initial;
  const factory WorkoutScheduleState.loaded({int? frequency, int? duration}) = Loaded;
}
