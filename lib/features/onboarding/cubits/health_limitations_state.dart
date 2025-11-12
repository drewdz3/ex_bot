import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_limitations_state.freezed.dart';

@freezed
abstract class HealthLimitationsState with _$HealthLimitationsState {
  const factory HealthLimitationsState.initial() = HealthLimitationsStateInitial;

  const factory HealthLimitationsState.loaded({
    required Set<String> selectedConditions,
    required Set<String> selectedInjuries,
  }) = HealthLimitationsStateLoaded;

  const factory HealthLimitationsState.error({required String message}) = HealthLimitationsStateError;
  const factory HealthLimitationsState.next({required String path}) = HealthLimitationsStateNext;
  const factory HealthLimitationsState.complete() = HealthLimitationsStateComplete;
}
