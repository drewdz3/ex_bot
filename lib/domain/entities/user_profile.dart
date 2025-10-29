import 'package:ex_bot/data/models/user_preferences.dart';

/// User's preferences and onboarding state that evolves over time
class UserProfile {
  UserProfile({required UserPreferences model});

  factory UserProfile.newUser(String userId) {
    return UserProfile(
      model: UserPreferences(userId: userId, lastUpdated: DateTime.now()),
    );
  }
}
