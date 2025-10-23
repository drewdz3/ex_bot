import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'basic_info_cubit.freezed.dart';

@freezed
class BasicInfoState with _$BasicInfoState {
  const factory BasicInfoState.initial() = _Initial;
  const factory BasicInfoState.loaded({
    int? age,
    String? gender,
    int? heightCm,
    double? weightKg,
    String? fitnessLevel,
  }) = _Loaded;
}

@injectable
class BasicInfoCubit extends Cubit<BasicInfoState> {
  BasicInfoCubit() : super(const BasicInfoState.initial());

  void updateAge(int? age) {
    state.maybeWhen(
      loaded: (_, gender, height, weight, fitnessLevel) => emit(
        BasicInfoState.loaded(age: age, gender: gender, heightCm: height, weightKg: weight, fitnessLevel: fitnessLevel),
      ),
      orElse: () => emit(BasicInfoState.loaded(age: age)),
    );
  }

  void updateGender(String? gender) {
    state.maybeWhen(
      loaded: (age, _, height, weight, fitnessLevel) => emit(
        BasicInfoState.loaded(age: age, gender: gender, heightCm: height, weightKg: weight, fitnessLevel: fitnessLevel),
      ),
      orElse: () => emit(BasicInfoState.loaded(gender: gender)),
    );
  }

  void updateHeight(int? heightCm) {
    state.maybeWhen(
      loaded: (age, gender, _, weight, fitnessLevel) => emit(
        BasicInfoState.loaded(
          age: age,
          gender: gender,
          heightCm: heightCm,
          weightKg: weight,
          fitnessLevel: fitnessLevel,
        ),
      ),
      orElse: () => emit(BasicInfoState.loaded(heightCm: heightCm)),
    );
  }

  void updateWeight(double? weightKg) {
    state.maybeWhen(
      loaded: (age, gender, height, _, fitnessLevel) => emit(
        BasicInfoState.loaded(
          age: age,
          gender: gender,
          heightCm: height,
          weightKg: weightKg,
          fitnessLevel: fitnessLevel,
        ),
      ),
      orElse: () => emit(BasicInfoState.loaded(weightKg: weightKg)),
    );
  }

  void updateFitnessLevel(String? fitnessLevel) {
    state.maybeWhen(
      loaded: (age, gender, height, weight, _) => emit(
        BasicInfoState.loaded(age: age, gender: gender, heightCm: height, weightKg: weight, fitnessLevel: fitnessLevel),
      ),
      orElse: () => emit(BasicInfoState.loaded(fitnessLevel: fitnessLevel)),
    );
  }

  bool get canContinue {
    return state.maybeWhen(
      loaded: (age, gender, height, weight, fitnessLevel) {
        return age != null && gender != null && height != null && weight != null && fitnessLevel != null;
      },
      orElse: () => false,
    );
  }

  Map<String, dynamic> get basicInfoData {
    return state.maybeWhen(
      loaded: (age, gender, height, weight, fitnessLevel) => {
        'age': age,
        'gender': gender,
        'heightCm': height,
        'weightKg': weight,
        'fitnessLevel': fitnessLevel,
      },
      orElse: () => {},
    );
  }
}
