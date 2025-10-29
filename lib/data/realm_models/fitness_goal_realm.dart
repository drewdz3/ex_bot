import 'package:realm/realm.dart';

part 'fitness_goal_realm.realm.dart';

@RealmModel()
class _FitnessGoalRealm {
  @PrimaryKey()
  late String id;
  late String name;
  late String description;
  late String icon;
}
