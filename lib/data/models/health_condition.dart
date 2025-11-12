import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_condition.freezed.dart';

@freezed
sealed class HealthCondition with _$HealthCondition {
  const factory HealthCondition({required String id, required String name}) = _HealthCondition;
}
