import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_info_state.freezed.dart';

@freezed
class BasicInfoState with _$BasicInfoState {
  const factory BasicInfoState.initial() = BasicInfoInitial;

  const factory BasicInfoState.loading() = BasicInfoLoading;

  const factory BasicInfoState.loaded({
    int? age,
    String? gender,
    int? height,
    double? weight,
    String? fitnessLevel,
    @Default(false) bool complete,
  }) = BasicInfoLoaded;

  const factory BasicInfoState.error(String message) = BasicInfoError;

  const factory BasicInfoState.complete() = BasicInfoComplete;

  const factory BasicInfoState.next() = BasicInfoNext;
}
