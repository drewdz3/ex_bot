import 'package:freezed_annotation/freezed_annotation.dart';

part 'fitness_goals_state.freezed.dart';

@freezed
class FitnessGoalsState with _$FitnessGoalsState {
  const factory FitnessGoalsState.initial() = FitnessGoalsStateInitial;
  const factory FitnessGoalsState.loaded({required Set<String> selectedGoals}) = FitnessGoalsStateLoaded;
  const factory FitnessGoalsState.error({required String message}) = FitnessGoalsStateError;
  const factory FitnessGoalsState.next({required String path}) = FitnessGoalsStateNext;
  const factory FitnessGoalsState.complete() = FitnessGoalsStateComplete;
}
