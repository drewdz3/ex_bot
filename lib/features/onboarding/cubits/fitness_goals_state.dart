import 'package:freezed_annotation/freezed_annotation.dart';

part 'fitness_goals_state.freezed.dart';

@freezed
class FitnessGoalsState with _$FitnessGoalsState {
  const factory FitnessGoalsState.initial() = _Initial;
  const factory FitnessGoalsState.loaded({required Set<String> selectedGoals}) = Loaded;
}
