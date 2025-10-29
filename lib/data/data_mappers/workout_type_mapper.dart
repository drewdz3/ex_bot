import 'package:injectable/injectable.dart';

import 'package:ex_bot/data/data_mappers/entity_mapper.dart';
import 'package:ex_bot/data/models/workout_type.dart';
import 'package:ex_bot/data/realm_models/workout_type_realm.dart';
import 'package:realm/realm.dart';

@Injectable(as: DataMapper<WorkoutType, WorkoutTypeRealm>)
class WorkoutTypeMapper implements DataMapper<WorkoutType, WorkoutTypeRealm> {
  const WorkoutTypeMapper();

  @override
  WorkoutTypeRealm toDatabase(WorkoutType entity) {
    return WorkoutTypeRealm(entity.id, entity.name, entity.description, icon: entity.icon);
  }

  @override
  List<WorkoutTypeRealm> toDatabaseList(List<WorkoutType> entities) {
    return entities.map((e) => toDatabase(e)).toList();
  }

  @override
  WorkoutType toData(WorkoutTypeRealm data) {
    return WorkoutType(id: data.id, name: data.name, description: data.description, icon: data.icon);
  }

  @override
  List<WorkoutType> toDataList(List<RealmObject> data) {
    return data.map((e) => toData(e as WorkoutTypeRealm)).toList();
  }
}
