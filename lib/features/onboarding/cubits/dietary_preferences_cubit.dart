import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/models/diet_type.dart';
import 'package:ex_bot/data/models/food_allergy.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/domain/repositories/lookup_repository.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/dietary_preferences_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class DietaryPreferencesCubit extends Cubit<DietaryPreferencesState> {
  final LookupRepository _lookups;
  final UserRepository _userRepository;
  late UserPreferences _preferences;

  Set<DietType> dietTypes = {};
  Set<FoodAllergy> allergyTypes = {};

  DietaryPreferencesCubit(this._lookups, this._userRepository) : super(const DietaryPreferencesState.initial());

  Future<void> initialize() async {
    try {
      //  get lookups
      dietTypes = (await _lookups.getDietTypes()).toSet();
      allergyTypes = (await _lookups.getFoodAllergies()).toSet();

      _preferences = await _userRepository.getPreferences(null);
      emit(
        DietaryPreferencesState.loaded(
          selectedDietTypes: _preferences.dietaryRestrictions.toSet(),
          selectedAllergies: _preferences.allergies.toSet(),
        ),
      );
    } catch (e) {
      DebugLogger.error('(DietaryPreferencesCubit.initialize) error: $e');
      emit(DietaryPreferencesState.error(message: AppConstants.unknownError));
    }
  }

  void updateDietTypes(Set<String> types) {
    if (state is DietaryPreferencesStateLoaded) {
      final loaded = (state as DietaryPreferencesStateLoaded);
      emit(DietaryPreferencesState.loaded(selectedDietTypes: types, selectedAllergies: loaded.selectedAllergies));
    } else {
      emit(DietaryPreferencesState.loaded(selectedDietTypes: types, selectedAllergies: const {}));
    }
  }

  void updateAllergies(Set<String> allergies) {
    if (state is DietaryPreferencesStateLoaded) {
      var loaded = (state as DietaryPreferencesStateLoaded);
      emit(DietaryPreferencesState.loaded(selectedDietTypes: loaded.selectedDietTypes, selectedAllergies: allergies));
    } else {
      emit(DietaryPreferencesState.loaded(selectedDietTypes: const {}, selectedAllergies: allergies));
    }
  }

  Future<void> save() async {
    if (state is! DietaryPreferencesStateLoaded) return;
    var current = (state as DietaryPreferencesStateLoaded);
    try {
      _preferences = _preferences.copyWith(
        dietaryRestrictions: current.selectedDietTypes.toList(),
        allergies: current.selectedAllergies.toList(),
        onboardingPath: RouteConstants.onboardingComplete,
      );
      await _userRepository.updatePreferences(_preferences);
      emit(DietaryPreferencesState.next(path: RouteConstants.onboardingComplete));
    } catch (e) {
      DebugLogger.error('(DietaryPreferencesCubit.save) error: $e');
      emit(DietaryPreferencesState.error(message: AppConstants.unknownError));
    }
  }
}
