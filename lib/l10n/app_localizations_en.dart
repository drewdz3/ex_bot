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
  String get fitnessGoalsTitle => 'What are your fitness goals?';

  @override
  String get fitnessGoalsSubtitle =>
      'Select all that apply to customize your workout recommendations';

  @override
  String get loseWeight => 'Lose Weight';

  @override
  String get buildMuscle => 'Build Muscle';

  @override
  String get improveEndurance => 'Improve Endurance';

  @override
  String get increaseStrength => 'Increase Strength';

  @override
  String get improveFlexibility => 'Improve Flexibility';

  @override
  String get stayActive => 'Stay Active';

  @override
  String get equipmentPreferencesTitle =>
      'What equipment do you have access to?';

  @override
  String get equipmentPreferencesSubtitle =>
      'Select your available equipment and preferred workout types';

  @override
  String get dumbbells => 'Dumbbells';

  @override
  String get barbells => 'Barbells';

  @override
  String get kettlebells => 'Kettlebells';

  @override
  String get resistanceBands => 'Resistance Bands';

  @override
  String get pullUpBar => 'Pull-up Bar';

  @override
  String get treadmill => 'Treadmill';

  @override
  String get stationaryBike => 'Stationary Bike';

  @override
  String get yogaMat => 'Yoga Mat';

  @override
  String get benchPress => 'Bench/Press';

  @override
  String get bodyweightOnly => 'Bodyweight Only';

  @override
  String get strength => 'Strength Training';

  @override
  String get cardio => 'Cardio';

  @override
  String get yoga => 'Yoga';

  @override
  String get hiit => 'HIIT';

  @override
  String get sports => 'Sports';

  @override
  String get next => 'Next';

  @override
  String get back => 'Back';

  @override
  String get validationSelectAtLeastOne => 'Please select at least one option';

  @override
  String get validationSelectAtLeastOneGoal =>
      'Please select at least one fitness goal';

  @override
  String get validationSelectEquipmentAndPreference =>
      'Please select at least one equipment type and workout preference';
}
