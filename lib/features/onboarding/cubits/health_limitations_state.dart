import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_limitations_state.freezed.dart';

@freezed
abstract class HealthLimitationsState with _$HealthLimitationsState {
  const factory HealthLimitationsState.initial() = _Initial;

  const factory HealthLimitationsState.loaded({
    required List<String> healthConditions,
    required List<String> injuriesOrLimitations,
  }) = Loaded;
}
