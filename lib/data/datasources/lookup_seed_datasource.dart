import 'package:ex_bot/data/models/common_injury.dart';
import 'package:ex_bot/data/models/diet_type.dart';
import 'package:ex_bot/data/models/equipment.dart';
import 'package:ex_bot/data/models/fitness_goal.dart';
import 'package:ex_bot/data/models/fitness_level.dart';
import 'package:ex_bot/data/models/food_allergy.dart';
import 'package:ex_bot/data/models/health_condition.dart';
import 'package:ex_bot/data/models/workout_type.dart';
import 'package:ex_bot/domain/datasources/lookup_datasource.dart';
import 'package:injectable/injectable.dart';

abstract class LookupSeedDatasource extends LookupDatasource {}

@Injectable(as: LookupSeedDatasource)
class LookupSeedDatasourceImpl implements LookupSeedDatasource {
  @override
  Future<List<Equipment>> getEquipment() async {
    return <Equipment>[
      Equipment(id: 'dumbbells', name: 'Dumbbells', icon: 'fitness_center'),
      Equipment(id: 'barbells', name: 'Barbells', icon: 'fitness_center'),
      Equipment(id: 'kettlebells', name: 'Kettlebells', icon: 'sports_gymnastics'),
      Equipment(id: 'resistanceBands', name: 'Resistance Bands', icon: 'straighten'),
      Equipment(id: 'pullupBar', name: 'Pull-up Bar', icon: 'horizontal_rule'),
      Equipment(id: 'benchPress', name: 'Bench Press', icon: 'fitness_center'),
      Equipment(id: 'treadmill', name: 'Treadmill', icon: 'directions_walk'),
      Equipment(id: 'bike', name: 'Exercise Bike', icon: 'directions_bike'),
      Equipment(id: 'rowingMachine', name: 'Rowing Machine', icon: 'rowing'),
      Equipment(id: 'yogaMat', name: 'Yoga Mat', icon: 'crop_landscape'),
      Equipment(id: 'noEquipment', name: 'No Equipment', icon: 'do_not_disturb_on'),
    ];
  }

  @override
  Future<List<FitnessGoal>> getFitnessGoals() async {
    return <FitnessGoal>[
      FitnessGoal(
        id: 'loseWeight',
        name: 'Lose Weight',
        description: 'Burn calories and reduce body fat',
        icon: 'trending_down',
      ),
      FitnessGoal(
        id: 'buildMuscle',
        name: 'Build Muscle',
        description: 'Build strength and muscle mass',
        icon: 'fitness_center',
      ),
      FitnessGoal(
        id: 'improveEndurance',
        name: 'Improve Endurance',
        description: 'Increase cardiovascular fitness',
        icon: 'directions_run',
      ),
      FitnessGoal(
        id: 'increaseStrength',
        name: 'Increase Strength',
        description: 'Build overall body strength',
        icon: 'sports_gymnastics',
      ),
      FitnessGoal(
        id: 'improveFlexibility',
        name: 'Improve Flexibility',
        description: 'Enhance mobility and flexibility',
        icon: 'self_improvement',
      ),
      FitnessGoal(
        id: 'generalHealth',
        name: 'General Health',
        description: 'Maintain overall health and wellness',
        icon: 'favorite',
      ),
      FitnessGoal(
        id: 'rehabRecovery',
        name: 'Rehab/Recovery',
        description: 'Recover from injury or surgery',
        icon: 'healing',
      ),
      FitnessGoal(
        id: 'athleticPerformance',
        name: 'Athletic Performance',
        description: 'Enhance sports performance',
        icon: 'emoji_events',
      ),
    ];
  }

  @override
  Future<List<FitnessLevel>> getFitnessLevels() async {
    return <FitnessLevel>[
      FitnessLevel(id: 'beginner', name: 'Beginner'),
      FitnessLevel(id: 'intermediate', name: 'Intermediate'),
      FitnessLevel(id: 'advanced', name: 'Advanced'),
      FitnessLevel(id: 'expert', name: 'Expert'),
    ];
  }

  @override
  Future<List<WorkoutType>> getWorkoutTypes() async {
    return <WorkoutType>[
      WorkoutType(
        id: 'strength',
        name: 'Strength Training',
        icon: 'fitness_center',
        description: 'Build muscle and strength',
      ),
      WorkoutType(id: 'cardio', name: 'Cardio', icon: 'directions_run', description: 'Improve cardiovascular health'),
      WorkoutType(
        id: 'pilates',
        name: 'Pilates',
        icon: 'sports_gymnastics',
        description: 'Core strength and flexibility',
      ),
      WorkoutType(
        id: 'crossfit',
        name: 'Crossfit',
        icon: 'sports_mma',
        description: 'High-intensity functional fitness',
      ),
      WorkoutType(
        id: 'bodyweight',
        name: 'Bodyweight',
        icon: 'accessibility_new',
        description: 'No equipment needed workouts',
      ),
      WorkoutType(
        id: 'stretching',
        name: 'Stretching',
        icon: 'nordic_walking',
        description: 'Flexibility and mobility exercises',
      ),
      WorkoutType(id: 'dance', name: 'Dance', icon: 'music_note', description: 'Fun and energetic dance workouts'),
      WorkoutType(
        id: 'martialArts',
        name: 'Martial Arts',
        icon: 'sports_kabaddi',
        description: 'Various martial arts disciplines',
      ),
      WorkoutType(id: 'running', name: 'Running', icon: 'directions_run', description: 'Outdoor and treadmill running'),
      WorkoutType(id: 'cycling', name: 'Cycling', icon: 'directions_bike', description: 'Road and indoor cycling'),
      WorkoutType(
        id: 'mountainBiking',
        name: 'Mountain Biking',
        icon: 'terrain',
        description: 'Off-road cycling adventures',
      ),
      WorkoutType(id: 'surfing', name: 'Surfing', icon: 'surfing', description: 'Ride the waves'),
      WorkoutType(
        id: 'skiing',
        name: 'Skiing',
        icon: 'downhill_skiing',
        description: 'Winter sports and snow activities',
      ),
      WorkoutType(id: 'swimming', name: 'Swimming', icon: 'pool', description: 'Full-body water workout'),
      WorkoutType(id: 'hiking', name: 'Hiking', icon: 'hiking', description: 'Nature walks and trail adventures'),
      WorkoutType(
        id: 'rockClimbing',
        name: 'Rock Climbing',
        icon: 'landscape',
        description: 'Indoor and outdoor climbing',
      ),
      WorkoutType(id: 'walking', name: 'Walking', icon: 'directions_walk', description: 'Casual and power walking'),
    ];
  }

  @override
  Future<List<CommonInjury>> getCommonInjuries() async {
    return <CommonInjury>[
      CommonInjury(id: 'back', name: 'Back Pain'),
      CommonInjury(id: 'knee', name: 'Knee Issues'),
      CommonInjury(id: 'shoulder', name: 'Shoulder Injury'),
      CommonInjury(id: 'foot', name: 'Ankle/Foot Problems'),
      CommonInjury(id: 'neck', name: 'Neck Problems'),
      CommonInjury(id: 'hip', name: 'Hip Issues'),
      CommonInjury(id: 'wrist', name: 'Wrist/Hand Pain'),
      CommonInjury(id: 'surgery', name: 'Previous Surgery'),
    ];
  }

  @override
  Future<List<HealthCondition>> getHealthConditions() async {
    return <HealthCondition>[
      HealthCondition(id: 'diabetes', name: 'Diabetes'),
      HealthCondition(id: 'blood_pressure', name: 'High Blood Pressure'),
      HealthCondition(id: 'heart_disease', name: 'Heart Disease'),
      HealthCondition(id: 'asthma', name: 'Asthma'),
      HealthCondition(id: 'arthritis', name: 'Arthritis'),
      HealthCondition(id: 'osteoporosis', name: 'Osteoporosis'),
      HealthCondition(id: 'chronic_pain', name: 'Chronic Pain'),
      HealthCondition(id: 'anxiety', name: 'Anxiety/Depression'),
    ];
  }

  @override
  Future<List<DietType>> getDietTypes() async {
    return <DietType>[
      DietType(id: 'vegetarian', name: 'Vegetarian'),
      DietType(id: 'vegan', name: 'Vegan'),
      DietType(id: 'gluten_free', name: 'Gluten Free'),
      DietType(id: 'dairy_free', name: 'Dairy Free'),
      DietType(id: 'keto', name: 'Keto'),
      DietType(id: 'paleo', name: 'Paleo'),
      DietType(id: 'low_carb', name: 'Low Carb'),
      DietType(id: 'low_sodium', name: 'Low-Sodium'),
      DietType(id: 'diabetic', name: 'Diabetic Diet'),
      DietType(id: 'carnivore', name: 'Carnivore'),
    ];
  }

  @override
  Future<List<FoodAllergy>> getFoodAllergies() async {
    return <FoodAllergy>[
      FoodAllergy(id: 'nuts', name: 'Nuts'),
      FoodAllergy(id: 'peanuts', name: 'Peanuts'),
      FoodAllergy(id: 'dairy', name: 'Dairy'),
      FoodAllergy(id: 'eggs', name: 'Eggs'),
      FoodAllergy(id: 'shellfish', name: 'Shellfish'),
      FoodAllergy(id: 'fish', name: 'Fish'),
      FoodAllergy(id: 'soy', name: 'Soy'),
      FoodAllergy(id: 'wheat', name: 'Wheat'),
      FoodAllergy(id: 'sesame', name: 'Sesame'),
    ];
  }
}
