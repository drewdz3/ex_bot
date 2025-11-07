import 'package:ex_bot/data/datasources/database_datasource.dart';
import 'package:ex_bot/data/realm_models/app_user_realm.dart';
import 'package:ex_bot/data/realm_models/equipment_realm.dart';
import 'package:ex_bot/data/realm_models/fitness_goal_realm.dart';
import 'package:ex_bot/data/realm_models/fitness_level_realm.dart';
import 'package:ex_bot/data/realm_models/user_preferences_realm.dart';
import 'package:ex_bot/data/realm_models/workout_type_realm.dart';
import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';

@Singleton(as: DatabaseDatasource)
class RealmDatasource extends DatabaseDatasource {
  late Realm _realm;

  RealmDatasource() {
    final config = Configuration.local([
      EquipmentRealm.schema,
      FitnessGoalRealm.schema,
      FitnessLevelRealm.schema,
      AppUserRealm.schema,
      WorkoutTypeRealm.schema,
      UserPreferencesRealm.schema,
    ]);
    _realm = Realm(config);
  }

  void initialize(Configuration config) {
    _realm = Realm(config);
  }

  @override
  Future<T?> getItem<T extends RealmObject>(Object key) async {
    return _realm.find<T>(key);
  }

  @override
  Future<List<T>> getAll<T extends RealmObject>() async {
    return _realm.all<T>().toList();
  }

  @override
  Future<void> saveData<T extends RealmObject>(T data) async {
    _realm.write(() {
      _realm.add<T>(data, update: true);
    });
  }

  @override
  Future<void> addAll<T extends RealmObject>(List<T> data) async {
    _realm.write(() {
      _realm.addAll<T>(data, update: true);
    });
  }

  @override
  Future<void> deleteData<T extends RealmObject>(T data) async {
    _realm.write(() {
      _realm.delete<T>(data);
    });
  }

  void dispose() {
    _realm.close();
  }
}
