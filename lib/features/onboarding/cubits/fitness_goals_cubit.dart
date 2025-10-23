import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fitness_goals_cubit.freezed.dart';

@freezed
class FitnessGoalsState with _$FitnessGoalsState {
  const factory FitnessGoalsState.initial() = _Initial;
  const factory FitnessGoalsState.loaded({required Set<String> selectedGoals}) = _Loaded;
}

@injectable
class FitnessGoalsCubit extends Cubit<FitnessGoalsState> {
  FitnessGoalsCubit() : super(const FitnessGoalsState.initial());

  void updateSelectedGoals(Set<String> goals) {
    emit(FitnessGoalsState.loaded(selectedGoals: goals));
  }

  void toggleGoal(String goalId) {
    final currentGoals = state.maybeWhen(loaded: (goals) => Set<String>.from(goals), orElse: () => <String>{});

    if (currentGoals.contains(goalId)) {
      currentGoals.remove(goalId);
    } else {
      currentGoals.add(goalId);
    }

    emit(FitnessGoalsState.loaded(selectedGoals: currentGoals));
  }

  bool get canContinue {
    return state.maybeWhen(loaded: (goals) => goals.isNotEmpty, orElse: () => false);
  }

  Set<String> get selectedGoals {
    return state.maybeWhen(loaded: (goals) => goals, orElse: () => <String>{});
  }
}
