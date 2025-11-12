import 'package:ex_bot/data/models/common_injury.dart';
import 'package:ex_bot/data/models/diet_type.dart';
import 'package:ex_bot/data/models/equipment.dart';
import 'package:ex_bot/data/models/fitness_goal.dart';
import 'package:ex_bot/data/models/fitness_level.dart';
import 'package:ex_bot/data/models/food_allergy.dart';
import 'package:ex_bot/data/models/health_condition.dart';
import 'package:ex_bot/data/models/workout_type.dart';

abstract class LookupDatasource {
  Future<List<FitnessGoal>> getFitnessGoals();
  Future<List<Equipment>> getEquipment();
  Future<List<WorkoutType>> getWorkoutTypes();
  Future<List<FitnessLevel>> getFitnessLevels();
  Future<List<HealthCondition>> getHealthConditions();
  Future<List<CommonInjury>> getCommonInjuries();
  Future<List<DietType>> getDietTypes();
  Future<List<FoodAllergy>> getFoodAllergies();
}
