import 'package:realm/realm.dart';

part 'user_model_realm.realm.dart';

@RealmModel()
class _UserRealm {
  @PrimaryKey()
  late String id;
  late String name;
  late String email;
  late int? age;
  late String? gender;
  late double? weight;
  late int? height;
  late DateTime? createdAt;
  late DateTime? updatedAt;
}
