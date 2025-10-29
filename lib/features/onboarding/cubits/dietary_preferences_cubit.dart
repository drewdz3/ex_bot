import 'package:ex_bot/features/onboarding/cubits/dietary_preferences_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// Cubit for managing dietary preferences during onboarding
@injectable
class DietaryPreferencesCubit extends Cubit<DietaryPreferencesState> {
  DietaryPreferencesCubit() : super(const DietaryPreferencesState.initial());

  /// Update dietary restrictions
  void updateDietaryRestrictions(List<String> restrictions) {
    if (state is Loaded) {
      final loaded = (state as Loaded);
      emit(
        DietaryPreferencesState.loaded(dietaryRestrictions: loaded.dietaryRestrictions, allergies: loaded.allergies),
      );
    } else {
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: restrictions, allergies: const []));
    }
  }

  /// Update allergies
  void updateAllergies(List<String> allergies) {
    if (state is Loaded) {
      var loaded = (state as Loaded);
      emit(
        DietaryPreferencesState.loaded(dietaryRestrictions: loaded.dietaryRestrictions, allergies: loaded.allergies),
      );
    } else {
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: const [], allergies: allergies));
    }
  }

  /// Add a custom dietary restriction
  void addCustomDietaryRestriction(String restriction) {
    if (restriction.trim().isEmpty) return;

    if (state is Loaded) {
      var loaded = (state as Loaded);
      final newRestrictions = List<String>.from(loaded.dietaryRestrictions)..add(restriction.trim());
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: newRestrictions, allergies: loaded.allergies));
    } else {
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: [restriction.trim()], allergies: const []));
    }
  }

  /// Add a custom allergy
  void addCustomAllergy(String allergy) {
    if (allergy.trim().isEmpty) return;

    if (state is Loaded) {
      var loaded = (state as Loaded);
      final newAllergies = List<String>.from(loaded.allergies)..add(allergy.trim());
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: loaded.dietaryRestrictions, allergies: newAllergies));
    } else {
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: const [], allergies: [allergy.trim()]));
    }
  }

  /// Get current dietary data as a map for UserPreferences
  Map<String, dynamic> get dietaryData {
    if (state is Loaded) {
      var loaded = (state as Loaded);
      // Combine dietary restrictions and allergies for the UserPreferences model
      final combinedRestrictions = [...loaded.dietaryRestrictions, ...loaded.allergies];
      return {'dietaryRestrictions': combinedRestrictions};
    } else {
      return {'dietaryRestrictions': <String>[]};
    }
  }

  /// Clear all data
  void clearAll() {
    emit(const DietaryPreferencesState.initial());
  }
}
