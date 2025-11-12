import 'package:ex_bot/data/models/common_injury.dart';
import 'package:ex_bot/data/models/health_condition.dart';
import 'package:ex_bot/domain/repositories/lookup_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/health_limitations_state.dart';

@injectable
class HealthLimitationsCubit extends Cubit<HealthLimitationsState> {
  final LookupRepository _lookups;
  final UserRepository _userRepository;

  late UserPreferences _preferences;
  Set<HealthCondition> healthConditions = {};
  Set<CommonInjury> commonInjuries = {};

  HealthLimitationsCubit(this._lookups, this._userRepository) : super(const HealthLimitationsState.initial());

  Future<void> initialize() async {
    try {
      //  get lookups
      healthConditions = (await _lookups.getHealthConditions()).toSet();
      commonInjuries = (await _lookups.getCommonInjuries()).toSet();

      _preferences = await _userRepository.getPreferences(null);

      emit(
        HealthLimitationsState.loaded(
          selectedConditions: _preferences.medicalConditions.toSet(),
          selectedInjuries: _preferences.injuries.toSet(),
        ),
      );
    } catch (e) {
      DebugLogger.error('(HealthLimitationsCubit.initialize) error: $e');
      emit(HealthLimitationsState.error(message: AppConstants.unknownError));
    }
  }

  void updateConditions(Set<String> conditions) {
    if (state is HealthLimitationsStateLoaded) {
      var loaded = (state as HealthLimitationsStateLoaded);
      emit(HealthLimitationsState.loaded(selectedConditions: conditions, selectedInjuries: loaded.selectedInjuries));
    } else {
      emit(HealthLimitationsState.loaded(selectedConditions: conditions, selectedInjuries: const {}));
    }
  }

  void updateInjuries(Set<String> injuries) {
    if (state is HealthLimitationsStateLoaded) {
      var loaded = (state as HealthLimitationsStateLoaded);
      emit(HealthLimitationsState.loaded(selectedConditions: loaded.selectedConditions, selectedInjuries: injuries));
    } else {
      emit(HealthLimitationsState.loaded(selectedConditions: const {}, selectedInjuries: injuries));
    }
  }

  Future<void> save() async {
    if (state is! HealthLimitationsStateLoaded) return;
    try {
      var loaded = (state as HealthLimitationsStateLoaded);
      _preferences = _preferences.copyWith(
        medicalConditions: loaded.selectedConditions.toList(),
        injuries: loaded.selectedInjuries.toList(),
        onboardingPath: RouteConstants.onboardingDietary,
      );
      await _userRepository.updatePreferences(_preferences);
      emit(HealthLimitationsState.next(path: RouteConstants.onboardingDietary));
    } catch (e) {
      DebugLogger.error('(HealthLimitationsCubit.save) error: $e');
      emit(HealthLimitationsState.error(message: AppConstants.saveError));
    }
  }
}
