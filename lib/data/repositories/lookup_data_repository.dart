import 'package:ex_bot/data/datasources/database_datasource.dart';
import 'package:ex_bot/data/datasources/lookup_seed_datasource.dart';
import 'package:ex_bot/data/realm_models/equipment_realm.dart';
import 'package:ex_bot/data/realm_models/fitness_goal_realm.dart';
import 'package:ex_bot/data/realm_models/fitness_level_realm.dart';
import 'package:ex_bot/data/realm_models/workout_type_realm.dart';
import 'package:ex_bot/data/models/equipment.dart';
import 'package:ex_bot/data/models/fitness_level.dart';
import 'package:ex_bot/data/models/workout_type.dart';
import 'package:ex_bot/data/data_mappers/entity_mapper.dart';
import 'package:ex_bot/domain/repositories/lookup_repository.dart';
import 'package:injectable/injectable.dart';

import '../models/fitness_goal.dart';

@LazySingleton(as: LookupRepository)
class LookupDataRepository implements LookupRepository {
  final DatabaseDatasource _database;
  final LookupSeedDatasource _seedDatasource;
  final DataMapper<FitnessGoal, FitnessGoalRealm> _fitnessGoalMapper;
  final DataMapper<Equipment, EquipmentRealm> _equipmentMapper;
  final DataMapper<WorkoutType, WorkoutTypeRealm> _workoutTypeMapper;
  final DataMapper<FitnessLevel, FitnessLevelRealm> _fitnessLevelMapper;

  List<WorkoutType> _workoutTypes = [];
  List<FitnessGoal> _fitnessGoals = [];
  List<Equipment> _equipment = [];
  List<FitnessLevel> _fitnessLevels = [];

  LookupDataRepository(
    this._database,
    this._seedDatasource,
    this._fitnessGoalMapper,
    this._equipmentMapper,
    this._workoutTypeMapper,
    this._fitnessLevelMapper,
  );

  @override
  Future<void> initialize() async {
    if (_workoutTypes.isEmpty) {
      _workoutTypes = await getWorkoutTypes();
    }
    if (_fitnessGoals.isEmpty) {
      _fitnessGoals = await getFitnessGoals();
    }
    if (_equipment.isEmpty) {
      _equipment = await getEquipment();
    }
    if (_fitnessLevels.isEmpty) {
      _fitnessLevels = await getFitnessLevels();
    }
  }

  @override
  Future<List<FitnessGoal>> getFitnessGoals() async {
    if (_fitnessGoals.isNotEmpty) {
      return _fitnessGoals;
    }
    final data = await _database.getAll<FitnessGoalRealm>();
    if (data.isEmpty) {
      final seed = await _seedDatasource.getFitnessGoals();
      final realm = _fitnessGoalMapper.toDatabaseList(seed);
      await _database.addAll<FitnessGoalRealm>(realm);
      _fitnessGoals = seed;
      return _fitnessGoals;
    }
    return _fitnessGoalMapper.toDataList(data);
  }

  @override
  Future<List<Equipment>> getEquipment() async {
    if (_equipment.isNotEmpty) {
      return _equipment;
    }
    final data = await _database.getAll<EquipmentRealm>();
    if (data.isEmpty) {
      final seed = await _seedDatasource.getEquipment();
      final realm = _equipmentMapper.toDatabaseList(seed);
      await _database.addAll<EquipmentRealm>(realm);
      _equipment = seed;
      return _equipment;
    }
    return _equipmentMapper.toDataList(data);
  }

  @override
  Future<List<WorkoutType>> getWorkoutTypes() async {
    if (_workoutTypes.isNotEmpty) {
      return _workoutTypes;
    }
    final data = await _database.getAll<WorkoutTypeRealm>();
    if (data.isEmpty) {
      final seed = await _seedDatasource.getWorkoutTypes();
      final realm = _workoutTypeMapper.toDatabaseList(seed);
      await _database.addAll<WorkoutTypeRealm>(realm);
      _workoutTypes = seed;
      return _workoutTypes;
    }
    return _workoutTypeMapper.toDataList(data);
  }

  @override
  Future<List<FitnessLevel>> getFitnessLevels() async {
    if (_fitnessLevels.isNotEmpty) {
      return _fitnessLevels;
    }
    final data = await _database.getAll<FitnessLevelRealm>();
    if (data.isEmpty) {
      final seed = await _seedDatasource.getFitnessLevels();
      final realm = _fitnessLevelMapper.toDatabaseList(seed);
      await _database.addAll<FitnessLevelRealm>(realm);
      _fitnessLevels = seed;
      return _fitnessLevels;
    }
    return _fitnessLevelMapper.toDataList(data);
  }
}
