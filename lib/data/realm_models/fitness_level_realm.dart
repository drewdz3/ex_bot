import 'package:realm/realm.dart';

part 'fitness_level_realm.realm.dart';

@RealmModel()
class _FitnessLevelRealm {
  @PrimaryKey()
  late String id;
  late String name;
}
