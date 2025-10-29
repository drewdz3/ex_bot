import 'package:ex_bot/domain/entities/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_complete_state.freezed.dart';

@freezed
abstract class OnboardingCompleteState with _$OnboardingCompleteState {
  const factory OnboardingCompleteState.initial() = Initial;
  const factory OnboardingCompleteState.basicInfoSaved() = BasicInfoSaved;
  const factory OnboardingCompleteState.fitnessGoalsSaved() = FitnessGoalsSaved;
  const factory OnboardingCompleteState.workoutPreferencesSaved() = WorkoutPreferencesSaved;
  const factory OnboardingCompleteState.physicalLimitationsSaved() = PhysicalLimitationsSaved;
  const factory OnboardingCompleteState.saving() = Saving;
  const factory OnboardingCompleteState.completed(UserProfile preferences) = Completed;
  const factory OnboardingCompleteState.error(String message) = Error;
}
