import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_preference_state.freezed.dart';

@freezed
abstract class WorkoutPreferencesState with _$WorkoutPreferencesState {
  const factory WorkoutPreferencesState.initial() = Initial;

  const factory WorkoutPreferencesState.loaded({
    required Set<String> workoutTypes,
    required Set<String> availableEquipment,
  }) = Loaded;
}
