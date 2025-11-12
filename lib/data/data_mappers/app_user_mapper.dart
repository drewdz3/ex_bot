import 'package:ex_bot/data/data_mappers/data_mapper.dart';
import 'package:ex_bot/data/models/app_user.dart';
import 'package:ex_bot/data/realm_models/app_user_realm.dart';
import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';

@Injectable(as: DataMapper<AppUser, AppUserRealm>)
class AppUserMapper implements DataMapper<AppUser, AppUserRealm> {
  const AppUserMapper();

  @override
  AppUser toData(AppUserRealm data) {
    return AppUser(
      id: data.id,
      email: data.email,
      displayName: data.displayName,
      createdAt: data.createdAt,
      lastLoginAt: data.lastLoginAt,
    );
  }

  @override
  List<AppUser> toDataList(List<RealmObject> data) {
    return data.map((e) => toData(e as AppUserRealm)).toList();
  }

  @override
  AppUserRealm toDatabase(AppUser entity) {
    return AppUserRealm(
      entity.id,
      entity.email,
      entity.createdAt,
      displayName: entity.displayName,
      lastLoginAt: entity.lastLoginAt,
      profilePictureUrl: entity.profilePictureUrl,
    );
  }

  @override
  List<AppUserRealm> toDatabaseList(List<AppUser> entities) {
    return entities.map((e) => toDatabase(e)).toList();
  }
}
