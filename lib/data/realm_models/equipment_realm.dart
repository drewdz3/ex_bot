import 'package:realm/realm.dart';

part 'equipment_realm.realm.dart';

@RealmModel()
class _EquipmentRealm {
  @PrimaryKey()
  late String id;
  late String name;
  late String? icon;
}
