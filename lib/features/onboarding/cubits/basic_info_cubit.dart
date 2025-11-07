import 'package:either_dart/either.dart';
import 'package:ex_bot/app/routing/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/data/models/fitness_level.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/domain/repositories/lookup_repository.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:ex_bot/domain/usecases/update_preferences_usecase.dart';

import 'basic_info_state.dart';

@injectable
class BasicInfoCubit extends Cubit<BasicInfoState> {
  final LookupRepository _lookupRepository;
  final UpdatePreferencesUseCase _updateUseCase;
  final UserRepository _userRepository;

  late UserPreferences _preferences;

  BasicInfoCubit(this._lookupRepository, this._updateUseCase, this._userRepository)
    : super(const BasicInfoState.initial());

  List<FitnessLevel> fitnessLevels = [];

  DateTime ageChanged = DateTime.now();
  DateTime heightChanged = DateTime.now();
  DateTime weightChanged = DateTime.now();

  Future<void> initialize() async {
    try {
      //  get preferences
      fitnessLevels = await _lookupRepository.getFitnessLevels();
      _preferences = await _userRepository.getPreferences(null);

      emit(
        BasicInfoState.loaded(
          age: _preferences.age,
          gender: _preferences.gender,
          height: _preferences.height,
          weight: _preferences.weight,
          fitnessLevel: _preferences.fitnessLevel,
          complete: _preferences.onboardingCompleted,
        ),
      );
    } catch (e) {
      emit(BasicInfoState.error(e.toString()));
      return;
    }
  }

  void updateAge(int? age) {
    ageChanged = DateTime.now();
    Future.delayed(const Duration(milliseconds: 700), () {
      if (DateTime.now().difference(ageChanged) >= const Duration(milliseconds: 700)) {
        final currentState = state;
        if (currentState is BasicInfoLoaded) {
          emit(currentState.copyWith(age: age));
        } else {
          emit(BasicInfoState.loaded(age: age));
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
    heightChanged = DateTime.now();
    Future.delayed(const Duration(milliseconds: 700), () {
      if (DateTime.now().difference(heightChanged) >= const Duration(milliseconds: 700)) {
        final currentState = state;
        if (currentState is BasicInfoLoaded) {
          emit(currentState.copyWith(height: height));
        } else {
          emit(BasicInfoState.loaded(height: height));
        }
      }
    });
  }

  void updateWeight(double? weight) {
    weightChanged = DateTime.now();
    Future.delayed(const Duration(milliseconds: 700), () {
      if (DateTime.now().difference(weightChanged) >= const Duration(milliseconds: 700)) {
        final currentState = state;
        if (currentState is BasicInfoLoaded) {
          emit(currentState.copyWith(weight: weight));
        } else {
          emit(BasicInfoState.loaded(weight: weight));
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
        (currentState.height != null) &&
        (currentState.weight != null) &&
        (currentState.fitnessLevel != null);
    if (complete != currentState.complete) {
      emit(currentState.copyWith(complete: complete));
    }
  }

  Future<void> saveChanges() async {
    if (state is! BasicInfoLoaded) {
      return;
    }
    try {
      var currentState = state as BasicInfoLoaded;
      _preferences = _preferences.copyWith(
        age: currentState.age,
        gender: currentState.gender,
        height: currentState.height,
        weight: currentState.weight,
        fitnessLevel: currentState.fitnessLevel,
        onboardingPath: RouteConstants.onboardingGoals,
        onboardingCompleted: false,
      );
      await _updateUseCase
          .executeAsync(params: _preferences)
          .fold(
            (failure) {
              emit(BasicInfoState.error('Failed to update preferences'));
            },
            (success) {
              emit(BasicInfoState.next());
            },
          );
    } catch (e) {
      emit(BasicInfoState.error(e.toString()));
    }
  }
}
