import 'package:ex_bot/core/utils/icon_lookup.dart';
import 'package:ex_bot/features/onboarding/cubits/fitness_goals_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/fitness_goals_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

/// Fitness goals selection page
class FitnessGoalsPage extends StatelessWidget {
  FitnessGoalsPage({super.key});

  Set<String> _selectedGoals = {};

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FitnessGoalsCubit, FitnessGoalsState>(
      builder: (context, state) {
        final cubit = context.read<FitnessGoalsCubit>();

        _selectedGoals = (state is Loaded) ? state.selectedGoals : <String>{};

        return Scaffold(
          appBar: AppBar(
            title: const Text('Fitness Goals'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go('/onboarding'), // Back to BasicInfoPage
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Progress indicator
                  LinearProgressIndicator(
                    value: 0.33333, // 2 of 6 steps
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                  ),

                  const SizedBox(height: 32),

                  Text(
                    'What are your fitness goals?',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'Select all that apply. You can change these later.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 32),

                  Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.1,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                      ),
                      itemCount: cubit.fitnessGoals.length,
                      itemBuilder: (context, index) {
                        final goal = cubit.fitnessGoals[index];
                        final isSelected = _selectedGoals.contains(goal.id);

                        return GestureDetector(
                          onTap: () => _toggleSelection(cubit, goal.id),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: isSelected ? Theme.of(context).primaryColor : Colors.grey[300]!,
                                width: 1.5,
                              ),
                              color: isSelected ? Theme.of(context).primaryColor.withValues(alpha: 0.1) : Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: isSelected ? Theme.of(context).primaryColor : Colors.grey[200],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(
                                      getIconByName(goal.icon),
                                      color: isSelected ? Colors.white : Colors.grey[600],
                                      size: 18,
                                    ),
                                  ),

                                  const SizedBox(height: 6),

                                  Text(
                                    goal.name,
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11,
                                      color: isSelected ? Theme.of(context).primaryColor : null,
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Continue button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _selectedGoals.isNotEmpty
                          ? () {
                              context.go('/onboarding/preferences');
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text(
                        _selectedGoals.isEmpty
                            ? 'Select at least one goal'
                            : 'Continue (${_selectedGoals.length} selected)',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Skip button
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(onPressed: () => context.go('/chat'), child: const Text('Skip for now')),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _toggleSelection(FitnessGoalsCubit cubit, String goals) {
    final newSelection = Set<String>.from(_selectedGoals);
    if (newSelection.contains(goals)) {
      newSelection.remove(goals);
    } else {
      newSelection.add(goals);
    }
    cubit.updateSelectedGoals(newSelection);
  }
}
