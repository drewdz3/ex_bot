import 'package:ex_bot/data/data_mappers/data_mapper.dart';
import 'package:ex_bot/data/models/health_condition.dart';
import 'package:ex_bot/data/realm_models/health_condition_realm.dart';
import 'package:injectable/injectable.dart';
import 'package:realm_dart/src/realm_object.dart';

@Injectable(as: DataMapper<HealthCondition, HealthConditionRealm>)
class HealthConditionMapper implements DataMapper<HealthCondition, HealthConditionRealm> {
  @override
  HealthCondition toData(HealthConditionRealm data) {
    return HealthCondition(id: data.id, name: data.name);
  }

  @override
  List<HealthCondition> toDataList(List<RealmObject> data) {
    return data.map((e) => toData(e as HealthConditionRealm)).toList();
  }

  @override
  HealthConditionRealm toDatabase(HealthCondition entity) {
    return HealthConditionRealm(entity.id, entity.name);
  }

  @override
  List<HealthConditionRealm> toDatabaseList(List<HealthCondition> entities) {
    return entities.map((e) => toDatabase(e)).toList();
  }
}
