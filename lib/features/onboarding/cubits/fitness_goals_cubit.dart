import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/data/models/fitness_goal.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/domain/repositories/lookup_repository.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/fitness_goals_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class FitnessGoalsCubit extends Cubit<FitnessGoalsState> {
  final LookupRepository _lookupRepository;
  final UserRepository _userRepository;

  late UserPreferences _preferences;

  List<FitnessGoal> fitnessGoals = [];

  FitnessGoalsCubit(this._lookupRepository, this._userRepository) : super(const FitnessGoalsState.initial());

  void updateSelectedGoals(Set<String> goals) {
    emit(FitnessGoalsState.loaded(selectedGoals: goals));
  }

  Future<void> initialize() async {
    fitnessGoals = await _lookupRepository.getFitnessGoals();
    //  get preferences
    _preferences = await _userRepository.getPreferences(null);
    var selected = _preferences.fitnessGoals.toSet();
    emit(FitnessGoalsState.loaded(selectedGoals: selected));
  }

  void toggleGoal(String goalId) {
    var currentGoals = (state is FitnessGoalsStateLoaded)
        ? (state as FitnessGoalsStateLoaded).selectedGoals
        : <String>{};

    if (currentGoals.contains(goalId)) {
      currentGoals.remove(goalId);
    } else {
      currentGoals.add(goalId);
    }

    emit(FitnessGoalsState.loaded(selectedGoals: currentGoals));
  }

  bool get canContinue {
    return (state is FitnessGoalsStateLoaded) ? (state as FitnessGoalsStateLoaded).selectedGoals.isNotEmpty : false;
  }

  Set<String> get selectedGoals {
    return (state is FitnessGoalsStateLoaded) ? (state as FitnessGoalsStateLoaded).selectedGoals : <String>{};
  }

  Future<void> save() async {
    try {
      _preferences = _preferences.copyWith(fitnessGoals: selectedGoals.toList());
      await _userRepository.updatePreferences(_preferences);
      emit(FitnessGoalsState.next(path: RouteConstants.onboardingPreferences));
    } catch (e) {
      emit(FitnessGoalsState.error(message: AppConstants.saveError));
    }
  }
}
