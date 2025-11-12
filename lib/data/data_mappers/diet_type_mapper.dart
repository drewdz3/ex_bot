import 'package:injectable/injectable.dart';
import 'package:realm_dart/src/realm_object.dart';

import 'package:ex_bot/data/data_mappers/data_mapper.dart';
import 'package:ex_bot/data/models/diet_type.dart';
import 'package:ex_bot/data/realm_models/diet_type_realm.dart';

@Injectable(as: DataMapper<DietType, DietTypeRealm>)
class DietTypeMapper extends DataMapper<DietType, DietTypeRealm> {
  @override
  DietType toData(DietTypeRealm data) {
    return DietType(id: data.id, name: data.name);
  }

  @override
  List<DietType> toDataList(List<RealmObject> data) {
    return data.map((e) => toData(e as DietTypeRealm)).toList();
  }

  @override
  DietTypeRealm toDatabase(DietType entity) {
    return DietTypeRealm(entity.id, entity.name);
  }

  @override
  List<DietTypeRealm> toDatabaseList(List<DietType> entities) {
    return entities.map((e) => toDatabase(e)).toList();
  }
}
