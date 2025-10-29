import 'package:ex_bot/data/models/equipment.dart';
import 'package:ex_bot/data/models/workout_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_preference_state.freezed.dart';

@freezed
abstract class WorkoutPreferencesState with _$WorkoutPreferencesState {
  const factory WorkoutPreferencesState.initial() = Initial;

  const factory WorkoutPreferencesState.loaded({
    required List<String> workoutTypes,
    required List<String> availableEquipment,
  }) = Loaded;
}
