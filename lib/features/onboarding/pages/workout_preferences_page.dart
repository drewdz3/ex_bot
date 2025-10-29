import 'package:ex_bot/domain/entities/lookup_item.dart';
import 'package:ex_bot/features/onboarding/widgets/multiselect_grid.dart';
import 'package:ex_bot/features/onboarding/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_preference_state.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_preferences_cubit.dart';

/// Workout preferences selection page
class WorkoutPreferencesPage extends StatelessWidget {
  const WorkoutPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutPreferencesCubit, WorkoutPreferencesState>(
      builder: (context, state) {
        final cubit = context.read<WorkoutPreferencesCubit>();
        final Set<String> currentWorkoutTypes = (state is Loaded) ? state.workoutTypes : {};
        final Set<String> currentEquipment = (state is Loaded) ? state.availableEquipment : {};

        return Scaffold(
          appBar: AppBar(
            title: const Text('Workout Preferences'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go('/onboarding/goals'), // Back to FitnessGoalsPage
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
                    value: 0.5, // 3 of 6 steps
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                  ),

                  const SizedBox(height: 32),

                  Text(
                    'How you like to work out?',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'Help us personalize your fitness experience.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 32),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Workout Types Section
                          SectionHeader(title: 'Preferred Workouts', subtitle: 'Select the training styles you enjoy'),
                          const SizedBox(height: 16),
                          MultiselectGrid(
                            selectedItems: currentWorkoutTypes,
                            onSelectionChanged: cubit.updateWorkoutTypes,
                            items: cubit.workoutTypes
                                .map(
                                  (type) => LookupItem(
                                    id: type.id,
                                    name: type.name,
                                    description: type.description,
                                    icon: type.icon,
                                  ),
                                )
                                .toList(),
                          ),

                          const SizedBox(height: 32),

                          // Available Equipment Section
                          SectionHeader(
                            title: 'Available Equipment',
                            subtitle: 'What equipment do you have access to?',
                          ),
                          const SizedBox(height: 16),
                          MultiselectGrid(
                            selectedItems: currentEquipment,
                            onSelectionChanged: cubit.updateEquipment,
                            items: cubit.equipment
                                .map((equip) => LookupItem(id: equip.id, name: equip.name, icon: equip.icon))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Continue button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: cubit.canContinue ? () => _continueToNext(context, cubit) : null,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text(
                        cubit.canContinue ? 'Continue' : 'Select at least one workout type',
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

  void _continueToNext(BuildContext context, WorkoutPreferencesCubit cubit) {
    // TODO: Save workout preferences and navigate to workout schedule page
    DebugLogger.debug('Workout Preferences: ${cubit.preferencesData}');

    // Navigate to workout schedule page
    context.go('/onboarding/schedule');
  }
}
