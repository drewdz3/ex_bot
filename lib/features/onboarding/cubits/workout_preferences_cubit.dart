import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/domain/entities/user_preferences.dart';

part 'workout_preferences_cubit.freezed.dart';

/// Cubit for managing workout preferences during onboarding
@injectable
class WorkoutPreferencesCubit extends Cubit<WorkoutPreferencesState> {
  WorkoutPreferencesCubit() : super(const WorkoutPreferencesState.initial());

  /// Update selected workout types
  void updateWorkoutTypes(List<WorkoutType> workoutTypes) {
    state.maybeWhen(
      loaded: (currentTypes, equipment) {
        emit(WorkoutPreferencesState.loaded(workoutTypes: workoutTypes, availableEquipment: equipment));
      },
      orElse: () {
        emit(WorkoutPreferencesState.loaded(workoutTypes: workoutTypes, availableEquipment: const []));
      },
    );
  }

  /// Update available equipment
  void updateEquipment(List<Equipment> equipment) {
    state.maybeWhen(
      loaded: (workoutTypes, currentEquipment) {
        emit(WorkoutPreferencesState.loaded(workoutTypes: workoutTypes, availableEquipment: equipment));
      },
      orElse: () {
        emit(WorkoutPreferencesState.loaded(workoutTypes: const [], availableEquipment: equipment));
      },
    );
  }

  /// Check if the form has minimum required data
  bool get canContinue {
    return state.maybeWhen(
      loaded: (workoutTypes, equipment) {
        return workoutTypes.isNotEmpty; // At least one workout type selected
      },
      orElse: () => false,
    );
  }

  /// Get current preferences as UserPreferences partial data
  Map<String, dynamic> get preferencesData {
    return state.maybeWhen(
      loaded: (workoutTypes, equipment) {
        return {'preferredWorkoutTypes': workoutTypes, 'availableEquipment': equipment};
      },
      orElse: () => {},
    );
  }
}

/// State for workout preferences
@freezed
abstract class WorkoutPreferencesState with _$WorkoutPreferencesState {
  const factory WorkoutPreferencesState.initial() = _Initial;

  const factory WorkoutPreferencesState.loaded({
    required List<WorkoutType> workoutTypes,
    required List<Equipment> availableEquipment,
  }) = _Loaded;
}
