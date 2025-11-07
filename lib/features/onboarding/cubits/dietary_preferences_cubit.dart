import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/dietary_preferences_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class DietaryPreferencesCubit extends Cubit<DietaryPreferencesState> {
  final UserRepository _userRepository;
  late UserPreferences _preferences;
  DietaryPreferencesCubit(this._userRepository) : super(const DietaryPreferencesState.initial());

  Future<void> initialize() async {
    try {
      _preferences = await _userRepository.getPreferences(null);
      emit(
        DietaryPreferencesState.loaded(
          dietaryRestrictions: _preferences.dietaryRestrictions,
          allergies: _preferences.allergies,
        ),
      );
    } catch (e) {
      DebugLogger.error('(DietaryPreferencesCubit.initialize) error: $e');
      emit(DietaryPreferencesState.error(message: AppConstants.unknownError));
    }
  }

  void updateDietaryRestrictions(List<String> restrictions) {
    if (state is DietaryPreferencesStateLoaded) {
      final loaded = (state as DietaryPreferencesStateLoaded);
      emit(
        DietaryPreferencesState.loaded(dietaryRestrictions: loaded.dietaryRestrictions, allergies: loaded.allergies),
      );
    } else {
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: restrictions, allergies: const []));
    }
  }

  void updateAllergies(List<String> allergies) {
    if (state is DietaryPreferencesStateLoaded) {
      var loaded = (state as DietaryPreferencesStateLoaded);
      emit(
        DietaryPreferencesState.loaded(dietaryRestrictions: loaded.dietaryRestrictions, allergies: loaded.allergies),
      );
    } else {
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: const [], allergies: allergies));
    }
  }

  void addCustomDietaryRestriction(String restriction) {
    if (restriction.trim().isEmpty) return;

    if (state is DietaryPreferencesStateLoaded) {
      var loaded = (state as DietaryPreferencesStateLoaded);
      final newRestrictions = List<String>.from(loaded.dietaryRestrictions)..add(restriction.trim());
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: newRestrictions, allergies: loaded.allergies));
    } else {
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: [restriction.trim()], allergies: const []));
    }
  }

  void addCustomAllergy(String allergy) {
    if (allergy.trim().isEmpty) return;

    if (state is DietaryPreferencesStateLoaded) {
      var loaded = (state as DietaryPreferencesStateLoaded);
      final newAllergies = List<String>.from(loaded.allergies)..add(allergy.trim());
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: loaded.dietaryRestrictions, allergies: newAllergies));
    } else {
      emit(DietaryPreferencesState.loaded(dietaryRestrictions: const [], allergies: [allergy.trim()]));
    }
  }

  Map<String, dynamic> get dietaryData {
    if (state is DietaryPreferencesStateLoaded) {
      var loaded = (state as DietaryPreferencesStateLoaded);
      // Combine dietary restrictions and allergies for the UserPreferences model
      final combinedRestrictions = [...loaded.dietaryRestrictions, ...loaded.allergies];
      return {'dietaryRestrictions': combinedRestrictions};
    } else {
      return {'dietaryRestrictions': <String>[]};
    }
  }

  void clearAll() {
    emit(const DietaryPreferencesState.initial());
  }

  Future<void> save() async {
    if (state is! DietaryPreferencesStateLoaded) return;
    var current = (state as DietaryPreferencesStateLoaded);
    try {
      _preferences = _preferences.copyWith(
        dietaryRestrictions: current.dietaryRestrictions,
        allergies: current.allergies,
      );
      await _userRepository.updatePreferences(_preferences);
      emit(DietaryPreferencesState.next(path: RouteConstants.onboardingComplete));
    } catch (e) {
      DebugLogger.error('(DietaryPreferencesCubit.save) error: $e');
      emit(DietaryPreferencesState.error(message: AppConstants.unknownError));
    }
  }
}
