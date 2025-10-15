import 'package:flutter/widgets.dart';

/// API endpoints and configuration for Azure OpenAI
class ApiConstants {
  // Azure OpenAI endpoints are constructed dynamically from the base endpoint
  static const String chatCompletionsPath = '/openai/deployments/{deployment-id}/chat/completions';
  static const String modelsPath = '/openai/models';
  
  // Azure OpenAI specific constants
  static const String defaultDeployment = 'gpt-4-1-mini-deployment'; // Your deployment name
  static const String premiumDeployment = 'gpt-4-1-deployment'; // Optional premium deployment
  static const int maxTokens = 2000;
  static const double temperature = 0.7;
  static const String apiVersion = '2024-06-01'; // Azure API version
}

/// App-wide constants
class AppConstants {
  static const String emptyString = '';
  static const String appName = 'ExBot';
  static const String version = '0.1.0';
  
  //  Storage keys
  static const String userProfileKey = 'user_profile';
  static const String authTokenKey = 'auth_token';
  static const String onboardingCompleteKey = 'onboarding_complete';

  //  Environment constants

  //  Page Key Constants
  static const Key mainAppKey = Key('main');
  static const Key authPageKey = Key('auth_page');
  
  //  AI Coach constants
  static const int maxConversationHistory = 50;
  static const Duration aiResponseTimeout = Duration(seconds: 30);
  static const Duration notificationInterval = Duration(hours: 8);
}

/// Fitness-related constants
class FitnessConstants {
  static const List<String> fitnessGoals = [
    'Weight Loss',
    'General Fitness',
    'Muscle Building',
    'Strength Training',
    'Cardiovascular Health',
    'Flexibility & Mobility',
    'Sport-Specific Performance',
    'Body Composition',
    'Endurance Training',
    'Rehabilitation & Recovery',
  ];
  
  static const List<String> activityLevels = [
    'Sedentary (Little to no exercise)',
    'Lightly Active (Light exercise 1-3 days/week)',
    'Moderately Active (Moderate exercise 3-5 days/week)',
    'Very Active (Hard exercise 6-7 days/week)',
    'Extremely Active (Very hard exercise, physical job)',
  ];
  
  static const List<String> timeCommitments = [
    '15-30 minutes/day',
    '30-45 minutes/day',
    '45-60 minutes/day',
    '1-2 hours/day',
    '2+ hours/day',
  ];
}