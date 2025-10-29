import 'package:ex_bot/data/models/equipment.dart';
import 'package:ex_bot/data/models/fitness_goal.dart';
import 'package:ex_bot/data/models/fitness_level.dart';
import 'package:ex_bot/data/models/workout_type.dart';

abstract class LookupRepository {
  Future<void> initialize();
  Future<List<FitnessGoal>> getFitnessGoals();
  Future<List<Equipment>> getEquipment();
  Future<List<WorkoutType>> getWorkoutTypes();
  Future<List<FitnessLevel>> getFitnessLevels();
}
