import 'package:realm/realm.dart';

part 'food_allergy_realm.realm.dart';

@RealmModel()
class _FoodAllergyRealm {
  @PrimaryKey()
  late String id;
  late String name;
}
