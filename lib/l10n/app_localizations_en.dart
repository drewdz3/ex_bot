// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'ExBot';

  @override
  String get pageTitleBasicInfo => 'Basic Information';

  @override
  String get labelGender => 'Gender';

  @override
  String get infoGender => 'Used for accurate BMI and fitness calculations';

  @override
  String get validatorGender => 'Please select your gender';

  @override
  String get genderMale => 'Male';

  @override
  String get genderFemale => 'Female';

  @override
  String get labelHeight => 'Height';

  @override
  String get infoHeight => 'Enter your height';

  @override
  String get suffixHeight => 'cm';

  @override
  String get validatorHeight => 'Please enter your height';

  @override
  String get validatorHeightLimit =>
      'Please enter a valid height between 100 and 250 cm';

  @override
  String get labelWeight => 'Weight';

  @override
  String get infoWeight => 'Enter your weight';

  @override
  String get suffixWeight => 'kg';

  @override
  String get validatorWeight => 'Please enter your weight';

  @override
  String get validatorWeightLimit =>
      'Please enter a valid weight between 30 and 300 kg';

  @override
  String get labelFitnessLevel => 'Current Fitness Level';

  @override
  String get validatorFitnessLevel =>
      'Please select your current fitness level';

  @override
  String get labelContinue => 'Continue';

  @override
  String get labelAbout => 'Tell us about yourself';

  @override
  String get infoAbout => 'This information helps us tailor your fitness plan';

  @override
  String get labelAge => 'Age';

  @override
  String get infoAge => 'Enter your age';

  @override
  String get labelAgeSuffix => 'years';

  @override
  String get labelSkip => 'Skip for now';

  @override
  String get validatorAge => 'Please enter your age';

  @override
  String get validatorAgeLimit =>
      'Please enter a valid age between 13 and 120 years';

  @override
  String get pageTitleFitnessGoals => 'Fitness Goals';

  @override
  String get labelFitnessGoals => 'What are your fitness goals?';

  @override
  String get labelSelectAllChange =>
      'Select all that apply. You can change these later.';

  @override
  String get validatorFitnessGoals => 'Select at least one goal';

  @override
  String get pageTitleDietaryPreferences => 'Diet Preferences';

  @override
  String get infoDietaryPreferences => 'Any dietary preferences?';

  @override
  String get labelDietaryPreferences =>
      'This helps us provide relevant nutrition guidance. All information is optional.';

  @override
  String get labelDietaryRestrictions => 'Dietary Restrictions';

  @override
  String get infoDietaryRestrictions => 'Select any that apply to you';

  @override
  String get labelFoodAllergies => 'Food Allergies';

  @override
  String get infoFoodAllergies => 'Let us know about any food allergies';

  @override
  String get pageTitleHealthLimitations => 'Health & Limitations';

  @override
  String get infoHealthLimitations => 'Any health considerations?';

  @override
  String get labelHealthLimitations =>
      'Help us personalize safe workouts for you. All information is optional and kept private.';

  @override
  String get labelHealthConditions => 'Health Conditions';

  @override
  String get infoHealthConditions =>
      'Select any conditions that may affect your workouts';

  @override
  String get labelLimitations => 'Injuries & Physical Limitations';

  @override
  String get infoLimitations =>
      'Any current or past injuries we should know about?';

  @override
  String get pageTitleComplete => '\'Preferences Saved!';

  @override
  String get infoComplete =>
      'Your personalized fitness preferences are ready. Let\'s start your fitness journey with ExBot!';

  @override
  String get labelOverviewWorkouts => 'Personalized Workouts';

  @override
  String get infoOverviewWorkouts => 'Custom plans based on your preferences';

  @override
  String get labelOverviewTracking => 'Progress Tracking';

  @override
  String get infoOverviewTracking => 'Monitor your fitness journey';

  @override
  String get labelOverviewCoach => 'AI Coach Support';

  @override
  String get infoOverviewCoach => '24/7 guidance and motivation';

  @override
  String get labelStart => 'Start My Fitness Journey';

  @override
  String get labelUpdateInfo =>
      'You can update your preferences anytime in settings';

  @override
  String get pageTitleWelcome => 'Welcome to ExBot, ';

  @override
  String get labelWelcome =>
      'Your AI-powered fitness coach is ready to help you achieve your fitness goals.';

  @override
  String get labelFeaturePersonalized => 'Personalized Coaching';

  @override
  String get infoFeaturePersonalized =>
      'AI-powered guidance tailored to your needs';

  @override
  String get labelFeatureTracking => 'Progress Tracking';

  @override
  String get infoFeatureTracking => 'Monitor your fitness journey over time';

  @override
  String get labelFeatureNutrition => 'Nutrition Guidance';

  @override
  String get infoFeatureNutrition =>
      'Meal planning and dietary recommendations';

  @override
  String get labelGetStarted => 'Get Started';

  @override
  String get pageTitleWorkouts => 'Workout Preferences';

  @override
  String get labelWorkoutPreferences => 'How you like to work out?';

  @override
  String get infoWorkoutPreferences =>
      'Help us personalize your fitness experience.';

  @override
  String get labelWorkoutSelect => 'Preferred Workouts';

  @override
  String get infoWorkoutSelect => 'Select the training styles you enjoy';

  @override
  String get labelEquipment => 'Available Equipment';

  @override
  String get infoEquipment => 'What equipment do you have access to?';

  @override
  String get validatorWorkouts => 'Select at least one workout type';

  @override
  String get pageTitleSchedule => 'Workout Schedule';

  @override
  String get labelSchedule => 'What\'s your ideal workout schedule?';

  @override
  String get infoSchedule =>
      'Help us plan your fitness journey with a realistic schedule.';

  @override
  String get validatorSchedule => 'Select your workout schedule';

  @override
  String get labelScheduleDays => 'Workouts per week';

  @override
  String get infoScheduleDays =>
      'How many times can you realistically work out each week?';

  @override
  String get labelDuration => 'Workout duration';

  @override
  String get infoDuration =>
      'How long do you prefer each workout session to be?';

  @override
  String get labelScheduleTips => 'Tips for Success';

  @override
  String get infoScheduleTip1 =>
      'Start with a realistic schedule you can maintain';

  @override
  String get infoScheduleTip2 => 'Consistency is more important than intensity';

  @override
  String get infoScheduleTip3 => 'You can always adjust your schedule later';

  @override
  String welcomeBack(String user) {
    return 'Welcome back, $user!';
  }

  @override
  String get infoPersonalizedCouching => 'Personalized AI coaching';

  @override
  String get infoProgressTracking => 'Progress tracking';

  @override
  String get infoNutritionAdvice => 'Nutrition advice';

  @override
  String get infoSigningIn => 'Signing in...';

  @override
  String get btnSignIn => 'Sign in';

  @override
  String get btnGuest => 'Continue as Guest';

  @override
  String get infoTermsPrivacy =>
      'By continuing, you agree to our Terms of Service and Privacy Policy.';

  @override
  String errorSignInFailed(String message) {
    return 'Sign-in failed. $message';
  }

  @override
  String get errorAuthFailed => 'Sign-in was cancelled or failed.';

  @override
  String get infoAuthRequired =>
      'You must create an account and sign in to use this app. All features require authentication for personalized coaching and progress tracking.';

  @override
  String get unknownError => 'Something went wrong, please try again.';

  @override
  String get saveError => 'Failed to save changes. Please try again.';

  @override
  String get networkError =>
      'Network error. Please check your internet connection and try again.';

  @override
  String get bottom_tab1 => 'Training';

  @override
  String get bottom_tab2 => 'Diet';

  @override
  String get bottom_tab3 => 'Profile';

  @override
  String get pageTitleDiet => 'Meal/Diet Planning';

  @override
  String get pageTitleProfile => 'Profile';

  @override
  String get pageTitleTraining => 'Training';

  @override
  String get agentNotInitializedError =>
      'Azure OpenAI client is not properly configured';

  @override
  String get agentPrompt =>
      'You are ExBot, an expert AI fitness coach with deep knowledge in exercise science, nutrition, and behavioral psychology. Your role is to provide personalized, evidence-based guidance to help users achieve their health and fitness goals. Key coaching principles: - Always prioritize user safety and well-being - Provide personalized advice based on user\'s goals, limitations, and preferences - Use motivational and encouraging language - Ask clarifying questions when needed - Suggest progressive, sustainable changes - Consider both physical and mental aspects of fitness - If you are unable to answer, admit it honestly instead of guessing. General information about the user: name: [[displayName]], age: [[age]], fitness level: [[fitnessLevel]], height: [[height]] cm, weight: [[weight]] kg, sex: [[gender]], Fitness Goals: [[goals]], Preferred Workout Types: [[workoutTypes]], Available Equipment: [[equipment]], Workout Frequency: [[workoutFrequency]], times per week, Workout Duration: [[workoutDuration]] minutes per session, Known Injuries: [[knownInjuries]], Medical Conditions: [[conditions]], Allergies: [[allergies]], Dietary Preferences/Restrictions: [[preferredDiet]]. If information is missing, mention to the user how providing that info can help you give better advice and assist them in avoiding injuries. Do not suggest dietary options that conflict with the user\'s dietary preferences and restrictions. Do not suggest exercises that could aggravate the user\'s known injuries or medical conditions. Do not suggest more workouts than the user\'s stated workout frequency. Do not suggest workout durations longer than the user\'s stated workout duration. Do not suggest workout types that are not in the user\'s preferred workout types unless the user has not provided any preferences. Where possible, when making suggestions, include inform the user how these may aid in achieving their stated fitness goals. Remember to be conversational, supportive, and adaptive to the user\'s needs and responses. Conversation context: [[history]]';

  @override
  String get unspecifiedText => 'unspecified';

  @override
  String get noneText => 'none';
}
