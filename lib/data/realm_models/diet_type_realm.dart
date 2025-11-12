import 'package:realm/realm.dart';

part 'diet_type_realm.realm.dart';

@RealmModel()
class _DietTypeRealm {
  @PrimaryKey()
  late String id;
  late String name;
}
