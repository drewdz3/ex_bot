import 'package:realm/realm.dart';

part 'common_injury_realm.realm.dart';

@RealmModel()
class _CommonInjuryRealm {
  @PrimaryKey()
  late String id;
  late String name;
}
