import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/domain/entities/lookup_item.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_preference_state.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_preferences_cubit.dart';
import 'package:ex_bot/features/onboarding/widgets/multiselect_grid.dart';
import 'package:ex_bot/features/onboarding/widgets/section_header.dart';
import 'package:ex_bot/l10n/app_localizations.dart';

/// Workout preferences selection page
class WorkoutPreferencesPage extends StatelessWidget {
  const WorkoutPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkoutPreferencesCubit, WorkoutPreferencesState>(
      listener: (context, state) {
        if (state is WorkoutPreferencesStateNext) {
          context.go(state.path);
        } else if (state is WorkoutPreferencesStateComplete) {
          context.go(RouteConstants.chat);
        } else if (state is WorkoutPreferencesStateError) {
          final snackBar = SnackBar(
            content: Text(AppLocalizations.of(context)!.saveError),
            backgroundColor: Colors.red,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      buildWhen: (previous, current) {
        return current is WorkoutPreferencesStateLoaded;
      },
      builder: (context, state) {
        final cubit = context.read<WorkoutPreferencesCubit>();
        final Set<String> currentWorkoutTypes = (state is WorkoutPreferencesStateLoaded) ? state.workoutTypes : {};
        final Set<String> currentEquipment = (state is WorkoutPreferencesStateLoaded) ? state.availableEquipment : {};

        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.pageTitleWorkouts),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go(RouteConstants.onboardingGoals), // Back to FitnessGoalsPage
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
                    AppLocalizations.of(context)!.labelWorkoutPreferences,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    AppLocalizations.of(context)!.infoWorkoutPreferences,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 32),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Workout Types Section
                          SectionHeader(
                            title: AppLocalizations.of(context)!.labelWorkoutSelect,
                            subtitle: AppLocalizations.of(context)!.infoWorkoutSelect,
                          ),
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
                            title: AppLocalizations.of(context)!.labelEquipment,
                            subtitle: AppLocalizations.of(context)!.infoEquipment,
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
                      //  TODO: validation required here
                      onPressed: cubit.canContinue ? cubit.save : null,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text(
                        cubit.canContinue
                            ? AppLocalizations.of(context)!.labelContinue
                            : AppLocalizations.of(context)!.validatorWorkouts,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Skip button
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () => context.go(RouteConstants.chat),
                      child: Text(AppLocalizations.of(context)!.labelSkip),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
