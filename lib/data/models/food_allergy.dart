import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_allergy.freezed.dart';

@freezed
sealed class FoodAllergy with _$FoodAllergy {
  factory FoodAllergy({required String id, required String name}) = _FoodAllergy;
}
