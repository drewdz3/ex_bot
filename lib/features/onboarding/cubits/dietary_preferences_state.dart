import 'package:freezed_annotation/freezed_annotation.dart';

part 'dietary_preferences_state.freezed.dart';

@freezed
abstract class DietaryPreferencesState with _$DietaryPreferencesState {
  const factory DietaryPreferencesState.initial() = Initial;

  const factory DietaryPreferencesState.loaded({
    required List<String> dietaryRestrictions,
    required List<String> allergies,
  }) = Loaded;
}
