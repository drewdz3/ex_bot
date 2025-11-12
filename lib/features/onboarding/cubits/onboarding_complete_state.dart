import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_complete_state.freezed.dart';

@freezed
abstract class OnboardingCompleteState with _$OnboardingCompleteState {
  const factory OnboardingCompleteState.initial() = OnboardingCompleteStateInitial;
  const factory OnboardingCompleteState.loaded() = OnboardingCompleteStateLoaded;
  const factory OnboardingCompleteState.completed({required String path}) = OnboardingCompleteStateCompleted;
  const factory OnboardingCompleteState.error(String message) = OnboardingCompleteStateError;
}
