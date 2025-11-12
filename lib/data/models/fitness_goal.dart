import 'package:freezed_annotation/freezed_annotation.dart';

part 'fitness_goal.freezed.dart';

@freezed
sealed class FitnessGoal with _$FitnessGoal {
  const factory FitnessGoal({
    required String id,
    required String name,
    required String description,
    required String icon,
  }) = _FitnessGoal;
}
