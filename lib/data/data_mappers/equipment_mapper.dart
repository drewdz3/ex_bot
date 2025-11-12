import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';

import 'package:ex_bot/data/data_mappers/data_mapper.dart';
import 'package:ex_bot/data/models/equipment.dart';
import 'package:ex_bot/data/realm_models/equipment_realm.dart';

@Injectable(as: DataMapper<Equipment, EquipmentRealm>)
class EquipmentMapper implements DataMapper<Equipment, EquipmentRealm> {
  const EquipmentMapper();

  @override
  Equipment toData(EquipmentRealm data) {
    return Equipment(id: data.id, name: data.name, icon: data.icon);
  }

  @override
  List<Equipment> toDataList(List<RealmObject> data) {
    var list = data.map((e) => e as EquipmentRealm).toList();
    return list.map((e) => toData(e)).toList();
  }

  @override
  EquipmentRealm toDatabase(Equipment entity) {
    final realmEquipment = EquipmentRealm(entity.id, entity.name, icon: entity.icon);
    return realmEquipment;
  }

  @override
  List<EquipmentRealm> toDatabaseList(List<Equipment> entities) {
    return entities.map((e) => toDatabase(e)).toList();
  }
}
