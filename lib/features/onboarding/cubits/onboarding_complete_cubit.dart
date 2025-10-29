import 'package:ex_bot/data/models/equipment.dart';
import 'package:ex_bot/data/models/fitness_goal.dart';
import 'package:ex_bot/data/models/workout_type.dart';
import 'package:ex_bot/domain/usecases/get_workout_types_usecase.dart';
import 'package:ex_bot/features/onboarding/cubits/onboarding_complete_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/domain/entities/user_profile.dart';

/// Cubit for managing the onboarding completion process
@injectable
class OnboardingCompleteCubit extends Cubit<OnboardingCompleteState> {
  GetWorkoutTypesUsecase _getWorkoutTypesUsecase;

  OnboardingCompleteCubit(this._getWorkoutTypesUsecase) : super(const OnboardingCompleteState.initial());

  // Basic info data storage
  String? _userId;
  int? _age;
  String? _gender;
  int? _heightCm;
  double? _weightKg;
  String? _fitnessLevel;

  // Fitness goals data storage
  List<String> _selectedGoals = [];

  // Workout preferences data storage
  List<WorkoutType> _workoutTypes = [];
  List<Equipment> _availableEquipment = [];
  int? _workoutsPerWeek;
  int? _workoutDurationMinutes;

  // Physical limitations data storage
  List<String> _healthConditions = [];
  List<String> _dietaryRestrictions = [];

  /// Save basic info data
  void saveBasicInfo({
    String? userId,
    int? age,
    String? gender,
    int? heightCm,
    double? weightKg,
    String? fitnessLevel,
  }) {
    _userId = userId;
    _age = age;
    _gender = gender;
    _heightCm = heightCm;
    _weightKg = weightKg;
    _fitnessLevel = fitnessLevel;

    DebugLogger.debug('(OnboardingCompleteCubit) Basic info saved');
    emit(const OnboardingCompleteState.basicInfoSaved());
  }

  /// Save fitness goals data
  void saveFitnessGoals(List<String> goals) {
    _selectedGoals = List.from(goals);

    DebugLogger.debug('(OnboardingCompleteCubit) Fitness goals saved: $_selectedGoals');
    emit(const OnboardingCompleteState.fitnessGoalsSaved());
  }

  /// Save workout preferences data
  void saveWorkoutPreferences({
    required List<WorkoutType> workoutTypes,
    required List<Equipment> availableEquipment,
    int? workoutsPerWeek,
    int? workoutDurationMinutes,
  }) {
    _workoutTypes = List.from(workoutTypes);
    _availableEquipment = List.from(availableEquipment);
    _workoutsPerWeek = workoutsPerWeek;
    _workoutDurationMinutes = workoutDurationMinutes;

    DebugLogger.debug('(OnboardingCompleteCubit) Workout preferences saved');
    emit(const OnboardingCompleteState.workoutPreferencesSaved());
  }

  /// Save physical limitations data
  void savePhysicalLimitations({required List<String> healthConditions, required List<String> dietaryRestrictions}) {
    _healthConditions = List.from(healthConditions);
    _dietaryRestrictions = List.from(dietaryRestrictions);

    DebugLogger.debug('(OnboardingCompleteCubit) Physical limitations saved');
    emit(const OnboardingCompleteState.physicalLimitationsSaved());
  }

  /// Complete the entire onboarding process and save all data
  Future<void> completeOnboarding() async {
    try {
      emit(const OnboardingCompleteState.saving());

      //   // Map string goals to FitnessGoal enum
      //   final fitnessGoals = _mapGoalsToEnum(_selectedGoals);

      //   // Map string fitness level to enum
      //   final fitnessLevel = _mapFitnessLevelToEnum(_fitnessLevel);

      //   // Create UserPreferences object with all collected data
      //   final userPreferences = UserPreferences(
      //     userId: _userId ?? 'unknown',
      //     fitnessGoals: fitnessGoals,
      //     availableEquipment: _availableEquipment,
      //     preferredWorkoutTypes: _workoutTypes,
      //     fitnessLevel: fitnessLevel,
      //     age: _age,
      //     height: _heightCm?.toDouble(),
      //     weight: _weightKg,
      //     dietaryRestrictions: _dietaryRestrictions,
      //     medicalConditions: _healthConditions,
      //     workoutsPerWeek: _workoutsPerWeek,
      //     workoutDurationMinutes: _workoutDurationMinutes,
      //     hasCompletedInitialAssessment: true,
      //     lastUpdated: DateTime.now(),
      //   );

      //   // TODO: Save to repository/backend
      //   // await _userPreferencesRepository.savePreferences(userPreferences);

      //   DebugLogger.success('(OnboardingCompleteCubit) Onboarding completed successfully');
      //   DebugLogger.debug('Final preferences: ${userPreferences.toJson()}');

      //   emit(OnboardingCompleteState.completed(userPreferences));
    } catch (e) {
      DebugLogger.error('(OnboardingCompleteCubit) Failed to complete onboarding: $e');
      emit(OnboardingCompleteState.error(e.toString()));
    }
  }

  /// Map string goals to FitnessGoal enum
  //   List<FitnessGoal> _mapGoalsToEnum(List<String> goals) {
  //     final mappedGoals = <FitnessGoal>[];

  //     for (final goal in goals) {
  //       switch (goal) {
  //         case 'lose_weight':
  //           mappedGoals.add(FitnessGoal.loseWeight);
  //           break;
  //         case 'gain_muscle':
  //         case 'build_muscle':
  //           mappedGoals.add(FitnessGoal.buildMuscle);
  //           break;
  //         case 'improve_endurance':
  //           mappedGoals.add(FitnessGoal.improveEndurance);
  //           break;
  //         case 'increase_strength':
  //           mappedGoals.add(FitnessGoal.increaseStrength);
  //           break;
  //         case 'improve_flexibility':
  //           mappedGoals.add(FitnessGoal.improveFlexibility);
  //           break;
  //         case 'general_health':
  //           mappedGoals.add(FitnessGoal.stayActive);
  //           break;
  //         case 'stress_relief':
  //           // Map to stayActive as closest match
  //           mappedGoals.add(FitnessGoal.stayActive);
  //           break;
  //         case 'athletic_performance':
  //           mappedGoals.add(FitnessGoal.sportSpecific);
  //           break;
  //         default:
  //           DebugLogger.warning('(OnboardingCubit) Unknown fitness goal: $goal');
  //           break;
  //       }
  //     }

  //     return mappedGoals;
  //   }

  /// Map string fitness level to enum
  //   FitnessLevel? _mapFitnessLevelToEnum(String? level) {
  //     if (level == null) return null;

  //     switch (level.toLowerCase()) {
  //       case 'beginner':
  //         return FitnessLevel.beginner;
  //       case 'intermediate':
  //         return FitnessLevel.intermediate;
  //       case 'advanced':
  //         return FitnessLevel.advanced;
  //       case 'athlete':
  //         return FitnessLevel.expert;
  //       default:
  //         DebugLogger.warning('(OnboardingCubit) Unknown fitness level: $level');
  //         return FitnessLevel.beginner;
  //     }
  //   }

  /// Reset all onboarding data
  void resetOnboarding() {
    _userId = null;
    _age = null;
    _gender = null;
    _heightCm = null;
    _weightKg = null;
    _fitnessLevel = null;
    _selectedGoals.clear();
    _workoutTypes.clear();
    _availableEquipment.clear();
    _workoutsPerWeek = null;
    _workoutDurationMinutes = null;
    _healthConditions.clear();
    _dietaryRestrictions.clear();

    emit(const OnboardingCompleteState.initial());
    DebugLogger.debug('(OnboardingCompleteCubit) Onboarding data reset');
  }

  /// Get summary of all collected data
  Map<String, dynamic> get onboardingSummary {
    return {
      'userId': _userId,
      'basicInfo': {
        'age': _age,
        'gender': _gender,
        'heightCm': _heightCm,
        'weightKg': _weightKg,
        'fitnessLevel': _fitnessLevel,
      },
      'fitnessGoals': _selectedGoals,
      'workoutPreferences': {
        'workoutTypes': _workoutTypes.map((e) => e.toString()).toList(),
        'availableEquipment': _availableEquipment.map((e) => e.toString()).toList(),
        'workoutsPerWeek': _workoutsPerWeek,
        'workoutDurationMinutes': _workoutDurationMinutes,
      },
      'physicalLimitations': {'healthConditions': _healthConditions, 'dietaryRestrictions': _dietaryRestrictions},
    };
  }
}
