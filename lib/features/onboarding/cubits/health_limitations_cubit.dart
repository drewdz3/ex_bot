import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/health_limitations_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HealthLimitationsCubit extends Cubit<HealthLimitationsState> {
  final UserRepository _userRepository;

  late UserPreferences _preferences;

  HealthLimitationsCubit(this._userRepository) : super(const HealthLimitationsState.initial());

  Future<void> initialize() async {
    try {
      _preferences = await _userRepository.getPreferences(null);

      emit(
        HealthLimitationsState.loaded(
          healthConditions: _preferences.medicalConditions,
          injuriesOrLimitations: _preferences.injuries,
        ),
      );
    } catch (e) {
      DebugLogger.error('(HealthLimitationsCubit.initialize) error: $e');
      emit(HealthLimitationsState.error(message: AppConstants.unknownError));
    }
  }

  void updateHealthConditions(List<String> conditions) {
    if (state is HealthLimitationsStateLoaded) {
      var loaded = (state as HealthLimitationsStateLoaded);
      emit(
        HealthLimitationsState.loaded(
          healthConditions: conditions,
          injuriesOrLimitations: loaded.injuriesOrLimitations,
        ),
      );
    } else {
      emit(HealthLimitationsState.loaded(healthConditions: conditions, injuriesOrLimitations: const []));
    }
  }

  void updateInjuriesOrLimitations(List<String> injuries) {
    if (state is HealthLimitationsStateLoaded) {
      var loaded = (state as HealthLimitationsStateLoaded);
      emit(HealthLimitationsState.loaded(healthConditions: loaded.healthConditions, injuriesOrLimitations: injuries));
    } else {
      emit(HealthLimitationsState.loaded(healthConditions: const [], injuriesOrLimitations: injuries));
    }
  }

  void addCustomHealthCondition(String condition) {
    if (condition.trim().isEmpty) return;

    if (state is HealthLimitationsStateLoaded) {
      var loaded = (state as HealthLimitationsStateLoaded);
      final newConditions = List<String>.from(loaded.healthConditions)..add(condition.trim());
      emit(
        HealthLimitationsState.loaded(
          healthConditions: newConditions,
          injuriesOrLimitations: loaded.injuriesOrLimitations,
        ),
      );
    } else {
      emit(HealthLimitationsState.loaded(healthConditions: [condition.trim()], injuriesOrLimitations: const []));
    }
  }

  void addCustomInjury(String injury) {
    if (injury.trim().isEmpty) return;

    if (state is HealthLimitationsStateLoaded) {
      var loaded = (state as HealthLimitationsStateLoaded);
      final newInjuries = List<String>.from(loaded.injuriesOrLimitations)..add(injury.trim());
      emit(
        HealthLimitationsState.loaded(healthConditions: loaded.healthConditions, injuriesOrLimitations: newInjuries),
      );
    } else {
      emit(HealthLimitationsState.loaded(healthConditions: const [], injuriesOrLimitations: [injury.trim()]));
    }
  }

  Map<String, dynamic> get limitationsData {
    if (state is HealthLimitationsStateLoaded) {
      var loaded = (state as HealthLimitationsStateLoaded);
      return {
        'medicalConditions': [...loaded.healthConditions, ...loaded.injuriesOrLimitations],
      };
    } else {
      return {'medicalConditions': <String>[]};
    }
  }

  void clearAll() {
    emit(const HealthLimitationsState.initial());
  }

  Future<void> save() async {
    if (state is! HealthLimitationsStateLoaded) return;
    try {
      var loaded = (state as HealthLimitationsStateLoaded);
      _preferences = _preferences.copyWith(
        medicalConditions: loaded.healthConditions,
        injuries: loaded.injuriesOrLimitations,
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
