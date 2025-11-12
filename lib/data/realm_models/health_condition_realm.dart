import 'package:realm/realm.dart';

part 'health_condition_realm.realm.dart';

@RealmModel()
class _HealthConditionRealm {
  @PrimaryKey()
  late String id;
  late String name;
}
