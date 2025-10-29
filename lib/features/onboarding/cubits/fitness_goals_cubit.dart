import 'package:ex_bot/data/models/fitness_goal.dart';
import 'package:ex_bot/domain/repositories/lookup_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/fitness_goals_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class FitnessGoalsCubit extends Cubit<FitnessGoalsState> {
  final LookupRepository _lookupRepository;

  List<FitnessGoal> fitnessGoals = [];

  FitnessGoalsCubit(this._lookupRepository) : super(const FitnessGoalsState.initial());

  void updateSelectedGoals(Set<String> goals) {
    emit(FitnessGoalsState.loaded(selectedGoals: goals));
  }

  Future<void> initialize() async {
    fitnessGoals = await _lookupRepository.getFitnessGoals();
    // Simulate any initialization logic if needed
    emit(const FitnessGoalsState.loaded(selectedGoals: {}));
  }

  void toggleGoal(String goalId) {
    var currentGoals = (state is Loaded) ? (state as Loaded).selectedGoals : <String>{};

    if (currentGoals.contains(goalId)) {
      currentGoals.remove(goalId);
    } else {
      currentGoals.add(goalId);
    }

    emit(FitnessGoalsState.loaded(selectedGoals: currentGoals));
  }

  bool get canContinue {
    return (state is Loaded) ? (state as Loaded).selectedGoals.isNotEmpty : false;
  }

  Set<String> get selectedGoals {
    return (state is Loaded) ? (state as Loaded).selectedGoals : <String>{};
  }
}
