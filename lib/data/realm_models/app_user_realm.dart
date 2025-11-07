import 'package:realm/realm.dart';

part 'app_user_realm.realm.dart';

@RealmModel()
class _AppUserRealm {
  @PrimaryKey()
  late String id;
  late String email;
  late String? displayName;
  late String? profilePictureUrl;
  late DateTime createdAt;
  late DateTime? lastLoginAt;
}
