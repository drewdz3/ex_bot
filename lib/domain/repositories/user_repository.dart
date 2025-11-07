import 'package:ex_bot/data/models/app_user.dart';
import 'package:ex_bot/data/models/user_preferences.dart';

abstract class UserRepository {
  Future<UserPreferences> getPreferences(String? userId);

  Future<void> updatePreferences(UserPreferences preferences);

  Future<AppUser?> getUser(String? userId);

  Future<void> updateUser(AppUser user);

  Future<void> deleteUser(AppUser user);
}
