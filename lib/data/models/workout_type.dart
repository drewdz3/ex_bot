import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_type.freezed.dart';

@freezed
sealed class WorkoutType with _$WorkoutType {
  const factory WorkoutType({
    required String id,
    required String name,
    required String description,
    required String? icon,
  }) = _WorkoutType;
}
