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

  /// Title for the fitness goals selection page
  ///
  /// In en, this message translates to:
  /// **'What are your fitness goals?'**
  String get fitnessGoalsTitle;

  /// Subtitle for the fitness goals selection page
  ///
  /// In en, this message translates to:
  /// **'Select all that apply to customize your workout recommendations'**
  String get fitnessGoalsSubtitle;

  /// Fitness goal option
  ///
  /// In en, this message translates to:
  /// **'Lose Weight'**
  String get loseWeight;

  /// Fitness goal option
  ///
  /// In en, this message translates to:
  /// **'Build Muscle'**
  String get buildMuscle;

  /// Fitness goal option
  ///
  /// In en, this message translates to:
  /// **'Improve Endurance'**
  String get improveEndurance;

  /// Fitness goal option
  ///
  /// In en, this message translates to:
  /// **'Increase Strength'**
  String get increaseStrength;

  /// Fitness goal option
  ///
  /// In en, this message translates to:
  /// **'Improve Flexibility'**
  String get improveFlexibility;

  /// Fitness goal option
  ///
  /// In en, this message translates to:
  /// **'Stay Active'**
  String get stayActive;

  /// Title for the equipment preferences page
  ///
  /// In en, this message translates to:
  /// **'What equipment do you have access to?'**
  String get equipmentPreferencesTitle;

  /// Subtitle for the equipment preferences page
  ///
  /// In en, this message translates to:
  /// **'Select your available equipment and preferred workout types'**
  String get equipmentPreferencesSubtitle;

  /// Equipment option
  ///
  /// In en, this message translates to:
  /// **'Dumbbells'**
  String get dumbbells;

  /// Equipment option
  ///
  /// In en, this message translates to:
  /// **'Barbells'**
  String get barbells;

  /// Equipment option
  ///
  /// In en, this message translates to:
  /// **'Kettlebells'**
  String get kettlebells;

  /// Equipment option
  ///
  /// In en, this message translates to:
  /// **'Resistance Bands'**
  String get resistanceBands;

  /// Equipment option
  ///
  /// In en, this message translates to:
  /// **'Pull-up Bar'**
  String get pullUpBar;

  /// Equipment option
  ///
  /// In en, this message translates to:
  /// **'Treadmill'**
  String get treadmill;

  /// Equipment option
  ///
  /// In en, this message translates to:
  /// **'Stationary Bike'**
  String get stationaryBike;

  /// Equipment option
  ///
  /// In en, this message translates to:
  /// **'Yoga Mat'**
  String get yogaMat;

  /// Equipment option
  ///
  /// In en, this message translates to:
  /// **'Bench/Press'**
  String get benchPress;

  /// Equipment option for no equipment workouts
  ///
  /// In en, this message translates to:
  /// **'Bodyweight Only'**
  String get bodyweightOnly;

  /// Workout preference option
  ///
  /// In en, this message translates to:
  /// **'Strength Training'**
  String get strength;

  /// Workout preference option
  ///
  /// In en, this message translates to:
  /// **'Cardio'**
  String get cardio;

  /// Workout preference option
  ///
  /// In en, this message translates to:
  /// **'Yoga'**
  String get yoga;

  /// Workout preference option
  ///
  /// In en, this message translates to:
  /// **'HIIT'**
  String get hiit;

  /// Workout preference option
  ///
  /// In en, this message translates to:
  /// **'Sports'**
  String get sports;

  /// Button text to proceed to next step
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// Button text to go to previous step
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// Validation message when no options are selected
  ///
  /// In en, this message translates to:
  /// **'Please select at least one option'**
  String get validationSelectAtLeastOne;

  /// Validation message for fitness goals
  ///
  /// In en, this message translates to:
  /// **'Please select at least one fitness goal'**
  String get validationSelectAtLeastOneGoal;

  /// Validation message for equipment preferences page
  ///
  /// In en, this message translates to:
  /// **'Please select at least one equipment type and workout preference'**
  String get validationSelectEquipmentAndPreference;

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
