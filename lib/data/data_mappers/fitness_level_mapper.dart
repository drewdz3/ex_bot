import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';

import 'package:ex_bot/data/data_mappers/data_mapper.dart';
import 'package:ex_bot/data/models/fitness_level.dart';
import 'package:ex_bot/data/realm_models/fitness_level_realm.dart';

@Injectable(as: DataMapper<FitnessLevel, FitnessLevelRealm>)
class FitnessLevelMapper implements DataMapper<FitnessLevel, FitnessLevelRealm> {
  const FitnessLevelMapper();

  @override
  FitnessLevelRealm toDatabase(FitnessLevel entity) {
    return FitnessLevelRealm(entity.id, entity.name);
  }

  @override
  List<FitnessLevelRealm> toDatabaseList(List<FitnessLevel> entities) {
    return entities.map((e) => toDatabase(e)).toList();
  }

  @override
  FitnessLevel toData(FitnessLevelRealm data) {
    return FitnessLevel(id: data.id, name: data.name);
  }

  @override
  List<FitnessLevel> toDataList(List<RealmObject> data) {
    return data.map((e) => toData(e as FitnessLevelRealm)).toList();
  }
}
