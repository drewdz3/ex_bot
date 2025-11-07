import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_preference_state.freezed.dart';

@freezed
abstract class WorkoutPreferencesState with _$WorkoutPreferencesState {
  const factory WorkoutPreferencesState.initial() = WorkoutPreferencesStateInitial;

  const factory WorkoutPreferencesState.loaded({
    required Set<String> workoutTypes,
    required Set<String> availableEquipment,
  }) = WorkoutPreferencesStateLoaded;

  const factory WorkoutPreferencesState.error({required String message}) = WorkoutPreferencesStateError;

  const factory WorkoutPreferencesState.next({required String path}) = WorkoutPreferencesStateNext;

  const factory WorkoutPreferencesState.complete() = WorkoutPreferencesStateComplete;
}
