import 'package:freezed_annotation/freezed_annotation.dart';

part 'fitness_level.freezed.dart';

@freezed
abstract class FitnessLevel with _$FitnessLevel {
  const factory FitnessLevel({required String id, required String name}) = _FitnessLevel;
}
