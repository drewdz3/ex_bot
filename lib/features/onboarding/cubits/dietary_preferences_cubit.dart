import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dietary_preferences_cubit.freezed.dart';

/// Cubit for managing dietary preferences during onboarding
@injectable
class DietaryPreferencesCubit extends Cubit<DietaryPreferencesState> {
  DietaryPreferencesCubit() : super(const DietaryPreferencesState.initial());

  /// Update dietary restrictions
  void updateDietaryRestrictions(List<String> restrictions) {
    state.maybeWhen(
      loaded: (currentRestrictions, allergies) {
        emit(DietaryPreferencesState.loaded(dietaryRestrictions: restrictions, allergies: allergies));
      },
      orElse: () {
        emit(DietaryPreferencesState.loaded(dietaryRestrictions: restrictions, allergies: const []));
      },
    );
  }

  /// Update allergies
  void updateAllergies(List<String> allergies) {
    state.maybeWhen(
      loaded: (restrictions, currentAllergies) {
        emit(DietaryPreferencesState.loaded(dietaryRestrictions: restrictions, allergies: allergies));
      },
      orElse: () {
        emit(DietaryPreferencesState.loaded(dietaryRestrictions: const [], allergies: allergies));
      },
    );
  }

  /// Add a custom dietary restriction
  void addCustomDietaryRestriction(String restriction) {
    if (restriction.trim().isEmpty) return;

    state.maybeWhen(
      loaded: (restrictions, allergies) {
        final newRestrictions = List<String>.from(restrictions)..add(restriction.trim());
        emit(DietaryPreferencesState.loaded(dietaryRestrictions: newRestrictions, allergies: allergies));
      },
      orElse: () {
        emit(DietaryPreferencesState.loaded(dietaryRestrictions: [restriction.trim()], allergies: const []));
      },
    );
  }

  /// Add a custom allergy
  void addCustomAllergy(String allergy) {
    if (allergy.trim().isEmpty) return;

    state.maybeWhen(
      loaded: (restrictions, allergies) {
        final newAllergies = List<String>.from(allergies)..add(allergy.trim());
        emit(DietaryPreferencesState.loaded(dietaryRestrictions: restrictions, allergies: newAllergies));
      },
      orElse: () {
        emit(DietaryPreferencesState.loaded(dietaryRestrictions: const [], allergies: [allergy.trim()]));
      },
    );
  }

  /// Get current dietary data as a map for UserPreferences
  Map<String, dynamic> get dietaryData {
    return state.maybeWhen(
      loaded: (restrictions, allergies) {
        // Combine dietary restrictions and allergies for the UserPreferences model
        final combinedRestrictions = [...restrictions, ...allergies];
        return {'dietaryRestrictions': combinedRestrictions};
      },
      orElse: () => {'dietaryRestrictions': <String>[]},
    );
  }

  /// Clear all data
  void clearAll() {
    emit(const DietaryPreferencesState.initial());
  }
}

/// State for dietary preferences
@freezed
abstract class DietaryPreferencesState with _$DietaryPreferencesState {
  const factory DietaryPreferencesState.initial() = _Initial;

  const factory DietaryPreferencesState.loaded({
    required List<String> dietaryRestrictions,
    required List<String> allergies,
  }) = _Loaded;
}
