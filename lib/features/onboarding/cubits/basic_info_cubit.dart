import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'basic_info_state.dart';

@injectable
class BasicInfoCubit extends Cubit<BasicInfoState> {
  BasicInfoCubit() : super(const BasicInfoState.initial());

  int _age = 0;
  int _height = 0;
  double _weight = 0;

  DateTime ageChanged = DateTime.now();
  DateTime heightChanged = DateTime.now();
  DateTime weightChanged = DateTime.now();

  void initialize() {
    emit(const BasicInfoState.loaded());
  }

  void updateAge(int? age) {
    _age = age ?? 0;
    ageChanged = DateTime.now();
    Future.delayed(const Duration(milliseconds: 700), () {
      if (DateTime.now().difference(ageChanged) >= const Duration(milliseconds: 700)) {
        final currentState = state;
        if (currentState is BasicInfoLoaded) {
          emit(currentState.copyWith(age: _age));
        } else {
          emit(BasicInfoState.loaded(age: _age));
        }
      }
    });
  }

  void updateGender(String? gender) {
    final currentState = state;
    if (currentState is BasicInfoLoaded) {
      emit(currentState.copyWith(gender: gender));
    } else {
      emit(BasicInfoState.loaded(gender: gender));
    }
  }

  void updateHeight(int? height) {
    _height = height ?? 0;
    heightChanged = DateTime.now();
    Future.delayed(const Duration(milliseconds: 700), () {
      if (DateTime.now().difference(heightChanged) >= const Duration(milliseconds: 700)) {
        final currentState = state;
        if (currentState is BasicInfoLoaded) {
          emit(currentState.copyWith(heightCm: _height));
        } else {
          emit(BasicInfoState.loaded(heightCm: _height));
        }
      }
    });
  }

  void updateWeight(double? weightKg) {
    _weight = weightKg ?? 0;
    weightChanged = DateTime.now();
    Future.delayed(const Duration(milliseconds: 700), () {
      if (DateTime.now().difference(weightChanged) >= const Duration(milliseconds: 700)) {
        final currentState = state;
        if (currentState is BasicInfoLoaded) {
          emit(currentState.copyWith(weightKg: _weight));
        } else {
          emit(BasicInfoState.loaded(weightKg: _weight));
        }
      }
    });
  }

  void updateFitnessLevel(String? fitnessLevel) {
    final currentState = state;
    if (currentState is BasicInfoLoaded) {
      emit(currentState.copyWith(fitnessLevel: fitnessLevel));
      checkComplete();
    } else {
      emit(BasicInfoState.loaded(fitnessLevel: fitnessLevel));
    }
  }

  void resetForm() {
    emit(const BasicInfoState.loaded());
  }

  void checkComplete() {
    final currentState = state;
    if (currentState is! BasicInfoLoaded) {
      return;
    }
    bool complete =
        (currentState.age != null) &&
        (currentState.gender != null) &&
        (currentState.heightCm != null) &&
        (currentState.weightKg != null) &&
        (currentState.fitnessLevel != null);
    if (complete != currentState.complete) {
      emit(currentState.copyWith(complete: complete));
    }
  }

  void saveChanges() {}
}
