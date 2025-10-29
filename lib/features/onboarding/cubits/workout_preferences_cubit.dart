import 'package:ex_bot/data/models/equipment.dart';
import 'package:ex_bot/data/models/workout_type.dart';
import 'package:ex_bot/domain/repositories/lookup_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_preference_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// Cubit for managing workout preferences during onboarding
@injectable
class WorkoutPreferencesCubit extends Cubit<WorkoutPreferencesState> {
  final LookupRepository _lookupRepository;

  WorkoutPreferencesCubit(this._lookupRepository) : super(const WorkoutPreferencesState.initial());

  late List<WorkoutType> workoutTypes = [];
  late List<Equipment> equipment = [];

  Future<void> initialize() async {
    workoutTypes = await _lookupRepository.getWorkoutTypes();
    equipment = await _lookupRepository.getEquipment();
    emit(const WorkoutPreferencesState.loaded(workoutTypes: {}, availableEquipment: {}));
  }

  /// Update selected workout types
  void updateWorkoutTypes(Set<String> selectedWorkouts) {
    if (state is Loaded) {
      final loaded = (state as Loaded);
      emit(
        WorkoutPreferencesState.loaded(workoutTypes: selectedWorkouts, availableEquipment: loaded.availableEquipment),
      );
    } else {
      emit(WorkoutPreferencesState.loaded(workoutTypes: selectedWorkouts, availableEquipment: const {}));
    }
  }

  /// Update available equipment
  void updateEquipment(Set<String> selectedEquipment) {
    if (state is Loaded) {
      final loaded = (state as Loaded);
      emit(WorkoutPreferencesState.loaded(workoutTypes: loaded.workoutTypes, availableEquipment: selectedEquipment));
    } else {
      emit(WorkoutPreferencesState.loaded(workoutTypes: const {}, availableEquipment: selectedEquipment));
    }
  }

  /// Check if the form has minimum required data
  bool get canContinue {
    if (state is Loaded) {
      final loaded = (state as Loaded);
      return loaded.workoutTypes.isNotEmpty;
    } else {
      return false;
    }
  }

  /// Get current preferences as UserPreferences partial data
  Map<String, dynamic> get preferencesData {
    if (state is Loaded) {
      final loaded = (state as Loaded);
      return {'preferredWorkoutTypes': loaded.workoutTypes, 'availableEquipment': loaded.availableEquipment};
    } else {
      return {};
    }
  }
}
