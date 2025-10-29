import 'package:realm/realm.dart';

part 'workout_type_realm.realm.dart';

@RealmModel()
class _WorkoutTypeRealm {
  @PrimaryKey()
  late String id;
  late String name;
  late String description;
  late String? icon;
}
