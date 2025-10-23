import 'package:ex_bot/domain/entities/user_preferences.dart';

abstract class UserRepository {
  Future<UserPreferences> getUserPreferences(String userId);

  Future<void> updateUserPreferences(String userId, Map<String, dynamic> data);
}
