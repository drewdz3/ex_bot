import 'package:freezed_annotation/freezed_annotation.dart';

part 'diet_type.freezed.dart';

@freezed
sealed class DietType with _$DietType {
  const factory DietType({required String id, required String name}) = _DietType;
}
