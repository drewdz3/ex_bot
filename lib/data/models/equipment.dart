import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment.freezed.dart';

@freezed
abstract class Equipment with _$Equipment {
  const factory Equipment({required String id, required String name, required String? icon}) = _Equipment;
}
