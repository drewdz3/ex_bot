import 'package:ex_bot/data/realm_models/fitness_goal_realm.dart';
import 'package:ex_bot/data/models/fitness_goal.dart';
import 'package:ex_bot/data/data_mappers/data_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';

@Injectable(as: DataMapper<FitnessGoal, FitnessGoalRealm>)
class FitnessGoalMapper implements DataMapper<FitnessGoal, FitnessGoalRealm> {
  const FitnessGoalMapper();

  @override
  FitnessGoal toData(FitnessGoalRealm data) {
    return FitnessGoal(id: data.id, name: data.name, description: data.description, icon: data.icon);
  }

  @override
  List<FitnessGoal> toDataList(List<RealmObject> data) {
    var list = data.map((e) => e as FitnessGoalRealm).toList();
    return list.map((e) => toData(e)).toList();
  }

  @override
  FitnessGoalRealm toDatabase(FitnessGoal entity) {
    final realmFitnessGoal = FitnessGoalRealm(entity.id, entity.name, entity.description, entity.icon);
    return realmFitnessGoal;
  }

  @override
  List<FitnessGoalRealm> toDatabaseList(List<FitnessGoal> entities) {
    return entities.map((e) => toDatabase(e)).toList();
  }
}
