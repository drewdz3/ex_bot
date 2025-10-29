import 'package:ex_bot/features/onboarding/cubits/health_limitations_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HealthLimitationsCubit extends Cubit<HealthLimitationsState> {
  HealthLimitationsCubit() : super(const HealthLimitationsState.initial());

  /// Update health conditions
  void updateHealthConditions(List<String> conditions) {
    if (state is Loaded) {
      var loaded = (state as Loaded);
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

  /// Update injuries or physical limitations
  void updateInjuriesOrLimitations(List<String> injuries) {
    if (state is Loaded) {
      var loaded = (state as Loaded);
      emit(HealthLimitationsState.loaded(healthConditions: loaded.healthConditions, injuriesOrLimitations: injuries));
    } else {
      emit(HealthLimitationsState.loaded(healthConditions: const [], injuriesOrLimitations: injuries));
    }
  }

  /// Add a custom health condition
  void addCustomHealthCondition(String condition) {
    if (condition.trim().isEmpty) return;

    if (state is Loaded) {
      var loaded = (state as Loaded);
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

  /// Add a custom injury or limitation
  void addCustomInjury(String injury) {
    if (injury.trim().isEmpty) return;

    if (state is Loaded) {
      var loaded = (state as Loaded);
      final newInjuries = List<String>.from(loaded.injuriesOrLimitations)..add(injury.trim());
      emit(
        HealthLimitationsState.loaded(healthConditions: loaded.healthConditions, injuriesOrLimitations: newInjuries),
      );
    } else {
      emit(HealthLimitationsState.loaded(healthConditions: const [], injuriesOrLimitations: [injury.trim()]));
    }
  }

  /// Get current limitations as a map for UserPreferences
  Map<String, dynamic> get limitationsData {
    if (state is Loaded) {
      var loaded = (state as Loaded);
      return {
        'medicalConditions': [...loaded.healthConditions, ...loaded.injuriesOrLimitations],
      };
    } else {
      return {'medicalConditions': <String>[]};
    }
  }

  /// Clear all data
  void clearAll() {
    emit(const HealthLimitationsState.initial());
  }
}
