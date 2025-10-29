import 'package:ex_bot/domain/entities/user_profile.dart';

abstract class UserRepository {
  Future<UserProfile> getUserPreferences(String userId);

  Future<void> updateUserBasic(String userId);
}
