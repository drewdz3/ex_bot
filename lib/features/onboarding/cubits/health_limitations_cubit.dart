import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'health_limitations_cubit.freezed.dart';

/// Cubit for managing health limitations during onboarding
@injectable
class HealthLimitationsCubit extends Cubit<HealthLimitationsState> {
  HealthLimitationsCubit() : super(const HealthLimitationsState.initial());

  /// Update health conditions
  void updateHealthConditions(List<String> conditions) {
    state.maybeWhen(
      loaded: (currentConditions, injuries) {
        emit(HealthLimitationsState.loaded(healthConditions: conditions, injuriesOrLimitations: injuries));
      },
      orElse: () {
        emit(HealthLimitationsState.loaded(healthConditions: conditions, injuriesOrLimitations: const []));
      },
    );
  }

  /// Update injuries or physical limitations
  void updateInjuriesOrLimitations(List<String> injuries) {
    state.maybeWhen(
      loaded: (conditions, currentInjuries) {
        emit(HealthLimitationsState.loaded(healthConditions: conditions, injuriesOrLimitations: injuries));
      },
      orElse: () {
        emit(HealthLimitationsState.loaded(healthConditions: const [], injuriesOrLimitations: injuries));
      },
    );
  }

  /// Add a custom health condition
  void addCustomHealthCondition(String condition) {
    if (condition.trim().isEmpty) return;

    state.maybeWhen(
      loaded: (conditions, injuries) {
        final newConditions = List<String>.from(conditions)..add(condition.trim());
        emit(HealthLimitationsState.loaded(healthConditions: newConditions, injuriesOrLimitations: injuries));
      },
      orElse: () {
        emit(HealthLimitationsState.loaded(healthConditions: [condition.trim()], injuriesOrLimitations: const []));
      },
    );
  }

  /// Add a custom injury or limitation
  void addCustomInjury(String injury) {
    if (injury.trim().isEmpty) return;

    state.maybeWhen(
      loaded: (conditions, injuries) {
        final newInjuries = List<String>.from(injuries)..add(injury.trim());
        emit(HealthLimitationsState.loaded(healthConditions: conditions, injuriesOrLimitations: newInjuries));
      },
      orElse: () {
        emit(HealthLimitationsState.loaded(healthConditions: const [], injuriesOrLimitations: [injury.trim()]));
      },
    );
  }

  /// Get current limitations as a map for UserPreferences
  Map<String, dynamic> get limitationsData {
    return state.maybeWhen(
      loaded: (conditions, injuries) {
        return {
          'medicalConditions': [...conditions, ...injuries],
        };
      },
      orElse: () => {'medicalConditions': <String>[]},
    );
  }

  /// Clear all data
  void clearAll() {
    emit(const HealthLimitationsState.initial());
  }
}

/// State for health limitations
@freezed
abstract class HealthLimitationsState with _$HealthLimitationsState {
  const factory HealthLimitationsState.initial() = _Initial;

  const factory HealthLimitationsState.loaded({
    required List<String> healthConditions,
    required List<String> injuriesOrLimitations,
  }) = _Loaded;
}
