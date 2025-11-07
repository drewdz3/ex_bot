import 'package:freezed_annotation/freezed_annotation.dart';

part 'dietary_preferences_state.freezed.dart';

@freezed
abstract class DietaryPreferencesState with _$DietaryPreferencesState {
  const factory DietaryPreferencesState.initial() = DietaryPreferencesStateInitial;

  const factory DietaryPreferencesState.loaded({
    required List<String> dietaryRestrictions,
    required List<String> allergies,
  }) = DietaryPreferencesStateLoaded;

  const factory DietaryPreferencesState.error({required String message}) = DietaryPreferencesStateError;
  const factory DietaryPreferencesState.next({required String path}) = DietaryPreferencesStateNext;
  const factory DietaryPreferencesState.complete() = DietaryPreferencesStateComplete;
}
