import 'package:ex_bot/data/data_mappers/entity_mapper.dart';
import 'package:ex_bot/data/datasources/database_datasource.dart';
import 'package:ex_bot/data/models/app_user.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/data/realm_models/app_user_realm.dart';
import 'package:ex_bot/data/realm_models/user_preferences_realm.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final DatabaseDatasource _databaseDatasource;
  final DataMapper<AppUser, AppUserRealm> _appUserMapper;
  final DataMapper<UserPreferences, UserPreferencesRealm> _userPreferencesMapper;

  UserRepositoryImpl(this._databaseDatasource, this._appUserMapper, this._userPreferencesMapper);

  AppUser? _currentUser;
  UserPreferences? _userPreferences;

  @override
  Future<UserPreferences> getPreferences(String? userId) async {
    if (_userPreferences != null) {
      if ((userId != null) && (_userPreferences!.id != userId)) throw Exception("User ID mismatch");
      return _userPreferences!;
    }
    if (userId == null) throw Exception("User ID is null");

    var dbPreferences = await _databaseDatasource.getItem<UserPreferencesRealm>(userId);
    if (dbPreferences != null) {
      _userPreferences = _userPreferencesMapper.toData(dbPreferences);
    } else {
      _userPreferences = UserPreferences(id: userId);
    }
    return _userPreferences!;
  }

  @override
  Future<void> updatePreferences(UserPreferences preferences) {
    _userPreferences = preferences;
    var dbPreferences = _userPreferencesMapper.toDatabase(preferences);
    return _databaseDatasource.saveData<UserPreferencesRealm>(dbPreferences);
  }

  @override
  Future<void> deleteUser(AppUser user) async {
    var dbUser = _appUserMapper.toDatabase(user);
    _databaseDatasource.deleteData(dbUser);
    _userPreferences = null;
    _currentUser = null;
  }

  @override
  Future<AppUser?> getUser(String? userId) async {
    if (_currentUser != null) {
      if ((userId != null) && (_currentUser!.id != userId)) throw Exception("User ID mismatch");
      return _currentUser;
    }
    if (userId == null) throw Exception("User ID is null");
    var dbUser = await _databaseDatasource.getItem<AppUserRealm>(userId);
    if (dbUser == null) return null;
    _currentUser = _appUserMapper.toData(dbUser);
    return _currentUser;
  }

  @override
  Future<void> updateUser(AppUser user) {
    _currentUser = user;
    var dbUser = _appUserMapper.toDatabase(user);
    return _databaseDatasource.saveData<AppUserRealm>(dbUser);
  }
}
