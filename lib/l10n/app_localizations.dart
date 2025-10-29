import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// AI Powered Fitness Coach
  ///
  /// In en, this message translates to:
  /// **'ExBot'**
  String get appTitle;

  /// Title for the basic information page
  ///
  /// In en, this message translates to:
  /// **'Basic Information'**
  String get pageTitleBasicInfo;

  /// Label for gender selection
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get labelGender;

  /// Info text for gender selection
  ///
  /// In en, this message translates to:
  /// **'Used for accurate BMI and fitness calculations'**
  String get infoGender;

  /// Validation message for gender selection
  ///
  /// In en, this message translates to:
  /// **'Please select your gender'**
  String get validatorGender;

  /// Gender option
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get genderMale;

  /// Gender option
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get genderFemale;

  /// Label for height input field
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get labelHeight;

  /// Info text for height input field
  ///
  /// In en, this message translates to:
  /// **'Enter your height'**
  String get infoHeight;

  /// Suffix for height input field in metric units
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get suffixHeight;

  /// Validation message for height input field
  ///
  /// In en, this message translates to:
  /// **'Please enter your height'**
  String get validatorHeight;

  /// Validation message for height input field when out of range
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid height between 100 and 250 cm'**
  String get validatorHeightLimit;

  /// Label for weight input field
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get labelWeight;

  /// Info text for weight input field
  ///
  /// In en, this message translates to:
  /// **'Enter your weight'**
  String get infoWeight;

  /// Suffix for weight input field in metric units
  ///
  /// In en, this message translates to:
  /// **'kg'**
  String get suffixWeight;

  /// Validation message for weight input field
  ///
  /// In en, this message translates to:
  /// **'Please enter your weight'**
  String get validatorWeight;

  /// Validation message for weight input field when out of range
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid weight between 30 and 300 kg'**
  String get validatorWeightLimit;

  /// Label for fitness level selection
  ///
  /// In en, this message translates to:
  /// **'Current Fitness Level'**
  String get labelFitnessLevel;

  /// Validation message for fitness level selection
  ///
  /// In en, this message translates to:
  /// **'Please select your current fitness level'**
  String get validatorFitnessLevel;

  /// Button text to continue to the next step
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get labelContinue;

  /// Label for the basic information form
  ///
  /// In en, this message translates to:
  /// **'Tell us about yourself'**
  String get labelAbout;

  /// Info text for the basic information form
  ///
  /// In en, this message translates to:
  /// **'This information helps us tailor your fitness plan'**
  String get infoAbout;

  /// Label for age input field
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get labelAge;

  /// Hint text for age input field
  ///
  /// In en, this message translates to:
  /// **'Enter your age'**
  String get infoAge;

  /// Suffix for age input field
  ///
  /// In en, this message translates to:
  /// **'years'**
  String get labelAgeSuffix;

  /// Button text to skip the current step
  ///
  /// In en, this message translates to:
  /// **'Skip for now'**
  String get labelSkip;

  /// Validation message for age input field
  ///
  /// In en, this message translates to:
  /// **'Please enter your age'**
  String get validatorAge;

  /// Validation message for age input field when out of range
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid age between 13 and 120 years'**
  String get validatorAgeLimit;

  /// Title for the fitness goals page
  ///
  /// In en, this message translates to:
  /// **'Fitness Goals'**
  String get pageTitleFitnessGoals;

  /// Title for the fitness goals selection page
  ///
  /// In en, this message translates to:
  /// **'What are your fitness goals?'**
  String get labelFitnessGoals;

  /// Subtitle for the fitness goals selection page
  ///
  /// In en, this message translates to:
  /// **'Select all that apply. You can change these later.'**
  String get labelSelectAllChange;

  /// Validation message for fitness goals selection
  ///
  /// In en, this message translates to:
  /// **'Select at least one goal'**
  String get validatorFitnessGoals;

  /// Title for the diet preferences page
  ///
  /// In en, this message translates to:
  /// **'Diet Preferences'**
  String get pageTitleDietaryPreferences;

  /// Subtitle for the diet preferences selection page
  ///
  /// In en, this message translates to:
  /// **'Any dietary preferences?'**
  String get infoDietaryPreferences;

  /// Title for the diet preferences selection page
  ///
  /// In en, this message translates to:
  /// **'This helps us provide relevant nutrition guidance. All information is optional.'**
  String get labelDietaryPreferences;

  /// Label for dietary restrictions selection
  ///
  /// In en, this message translates to:
  /// **'Dietary Restrictions'**
  String get labelDietaryRestrictions;

  /// Info text for dietary restrictions selection
  ///
  /// In en, this message translates to:
  /// **'Select any that apply to you'**
  String get infoDietaryRestrictions;

  /// Label for food allergies selection
  ///
  /// In en, this message translates to:
  /// **'Food Allergies'**
  String get labelFoodAllergies;

  /// Info text for food allergies selection
  ///
  /// In en, this message translates to:
  /// **'Let us know about any food allergies'**
  String get infoFoodAllergies;

  /// Title for the health limitations page
  ///
  /// In en, this message translates to:
  /// **'Health & Limitations'**
  String get pageTitleHealthLimitations;

  /// Subtitle for the health limitations selection page
  ///
  /// In en, this message translates to:
  /// **'Any health considerations?'**
  String get infoHealthLimitations;

  /// Title for the health limitations selection page
  ///
  /// In en, this message translates to:
  /// **'Help us personalize safe workouts for you. All information is optional and kept private.'**
  String get labelHealthLimitations;

  /// Label for health conditions selection
  ///
  /// In en, this message translates to:
  /// **'Health Conditions'**
  String get labelHealthConditions;

  /// Info text for health conditions selection
  ///
  /// In en, this message translates to:
  /// **'Select any conditions that may affect your workouts'**
  String get infoHealthConditions;

  /// Label for injuries and physical limitations selection
  ///
  /// In en, this message translates to:
  /// **'Injuries & Physical Limitations'**
  String get labelLimitations;

  /// Info text for injuries and physical limitations selection
  ///
  /// In en, this message translates to:
  /// **'Any current or past injuries we should know about?'**
  String get infoLimitations;

  /// Title for the completion page
  ///
  /// In en, this message translates to:
  /// **'\'Preferences Saved!'**
  String get pageTitleComplete;

  /// Subtitle for the completion page
  ///
  /// In en, this message translates to:
  /// **'Your personalized fitness preferences are ready. Let\'s start your fitness journey with ExBot!'**
  String get infoComplete;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Personalized Workouts'**
  String get labelOverviewWorkouts;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Custom plans based on your preferences'**
  String get infoOverviewWorkouts;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Progress Tracking'**
  String get labelOverviewTracking;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Monitor your fitness journey'**
  String get infoOverviewTracking;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'AI Coach Support'**
  String get labelOverviewCoach;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'24/7 guidance and motivation'**
  String get infoOverviewCoach;

  /// Button text to start using the app
  ///
  /// In en, this message translates to:
  /// **'Start My Fitness Journey'**
  String get labelStart;

  /// Info text about updating preferences later
  ///
  /// In en, this message translates to:
  /// **'You can update your preferences anytime in settings'**
  String get labelUpdateInfo;

  /// Welcome title on landing page
  ///
  /// In en, this message translates to:
  /// **'Welcome to ExBot, '**
  String get pageTitleWelcome;

  /// Welcome subtitle on landing page
  ///
  /// In en, this message translates to:
  /// **'Your AI-powered fitness coach is ready to help you achieve your fitness goals.'**
  String get labelWelcome;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Personalized Coaching'**
  String get labelFeaturePersonalized;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'AI-powered guidance tailored to your needs'**
  String get infoFeaturePersonalized;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Progress Tracking'**
  String get labelFeatureTracking;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Monitor your fitness journey over time'**
  String get infoFeatureTracking;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Nutrition Guidance'**
  String get labelFeatureNutrition;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Meal planning and dietary recommendations'**
  String get infoFeatureNutrition;

  /// Button text to get started
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get labelGetStarted;

  /// Title for the workout preferences page
  ///
  /// In en, this message translates to:
  /// **'Workout Preferences'**
  String get pageTitleWorkouts;

  /// Title for the workout preferences selection page
  ///
  /// In en, this message translates to:
  /// **'How you like to work out?'**
  String get labelWorkoutPreferences;

  /// Subtitle for the workout preferences selection page
  ///
  /// In en, this message translates to:
  /// **'Help us personalize your fitness experience.'**
  String get infoWorkoutPreferences;

  /// Label for workout preferences selection
  ///
  /// In en, this message translates to:
  /// **'Preferred Workouts'**
  String get labelWorkoutSelect;

  /// Info text for workout preferences selection
  ///
  /// In en, this message translates to:
  /// **'Select the training styles you enjoy'**
  String get infoWorkoutSelect;

  /// Label for available equipment selection
  ///
  /// In en, this message translates to:
  /// **'Available Equipment'**
  String get labelEquipment;

  /// Info text for available equipment selection
  ///
  /// In en, this message translates to:
  /// **'What equipment do you have access to?'**
  String get infoEquipment;

  /// Validation message for workout preferences selection
  ///
  /// In en, this message translates to:
  /// **'Select at least one workout type'**
  String get validatorWorkouts;

  /// Title for the workout schedule page
  ///
  /// In en, this message translates to:
  /// **'Workout Schedule'**
  String get pageTitleSchedule;

  /// Title for the workout schedule selection page
  ///
  /// In en, this message translates to:
  /// **'What\'s your ideal workout schedule?'**
  String get labelSchedule;

  /// Subtitle for the workout schedule selection page
  ///
  /// In en, this message translates to:
  /// **'Help us plan your fitness journey with a realistic schedule.'**
  String get infoSchedule;

  /// Validation message for workout schedule selection
  ///
  /// In en, this message translates to:
  /// **'Select your workout schedule'**
  String get validatorSchedule;

  /// Label for number of workout days selection
  ///
  /// In en, this message translates to:
  /// **'Workouts per week'**
  String get labelScheduleDays;

  /// Info text for number of workout days selection
  ///
  /// In en, this message translates to:
  /// **'How many times can you realistically work out each week?'**
  String get infoScheduleDays;

  /// Label for workout duration selection
  ///
  /// In en, this message translates to:
  /// **'Workout duration'**
  String get labelDuration;

  /// Info text for workout duration selection
  ///
  /// In en, this message translates to:
  /// **'How long do you prefer each workout session to be?'**
  String get infoDuration;

  /// Title for workout schedule tips
  ///
  /// In en, this message translates to:
  /// **'Tips for Success'**
  String get labelScheduleTips;

  /// Workout schedule tip
  ///
  /// In en, this message translates to:
  /// **'Start with a realistic schedule you can maintain'**
  String get infoScheduleTip1;

  /// Workout schedule tip
  ///
  /// In en, this message translates to:
  /// **'Consistency is more important than intensity'**
  String get infoScheduleTip2;

  /// Workout schedule tip
  ///
  /// In en, this message translates to:
  /// **'You can always adjust your schedule later'**
  String get infoScheduleTip3;

  /// Greeting for returning users
  ///
  /// In en, this message translates to:
  /// **'Welcome back, {user}!'**
  String welcomeBack(String user);

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Personalized AI coaching'**
  String get infoPersonalizedCouching;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Progress tracking'**
  String get infoProgressTracking;

  /// Feature highlight
  ///
  /// In en, this message translates to:
  /// **'Nutrition advice'**
  String get infoNutritionAdvice;

  /// Loading state when signing in
  ///
  /// In en, this message translates to:
  /// **'Signing in...'**
  String get infoSigningIn;

  /// Button text to sign in
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get btnSignIn;

  /// Button text to continue as guest
  ///
  /// In en, this message translates to:
  /// **'Continue as Guest'**
  String get btnGuest;

  /// Terms and privacy link on sign in page
  ///
  /// In en, this message translates to:
  /// **'By continuing, you agree to our Terms of Service and Privacy Policy.'**
  String get infoTermsPrivacy;

  /// Error message when sign-in fails
  ///
  /// In en, this message translates to:
  /// **'Sign-in failed. {message}'**
  String errorSignInFailed(String message);

  /// Generic authentication failure message
  ///
  /// In en, this message translates to:
  /// **'Sign-in was cancelled or failed.'**
  String get errorAuthFailed;

  /// Information text explaining that authentication is required to use the app
  ///
  /// In en, this message translates to:
  /// **'You must create an account and sign in to use this app. All features require authentication for personalized coaching and progress tracking.'**
  String get infoAuthRequired;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
