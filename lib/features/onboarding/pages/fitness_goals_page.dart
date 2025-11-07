import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/domain/entities/lookup_item.dart';
import 'package:ex_bot/features/onboarding/cubits/fitness_goals_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/fitness_goals_state.dart';
import 'package:ex_bot/features/onboarding/widgets/multiselect_grid.dart';
import 'package:ex_bot/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

/// Fitness goals selection page
class FitnessGoalsPage extends StatelessWidget {
  const FitnessGoalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FitnessGoalsCubit, FitnessGoalsState>(
      listener: (context, state) {
        if (state is FitnessGoalsStateNext) {
          context.go(state.path);
        } else if (state is FitnessGoalsStateComplete) {
          context.go(RouteConstants.chat);
        } else if (state is FitnessGoalsStateError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(AppLocalizations.of(context)!.unknownError), backgroundColor: Colors.red),
          );
        }
      },
      buildWhen: (previous, current) {
        return current is FitnessGoalsStateLoaded;
      },
      builder: (context, state) {
        final cubit = context.read<FitnessGoalsCubit>();
        Set<String> selectedGoals = (state is FitnessGoalsStateLoaded) ? state.selectedGoals : <String>{};
        final goalsList = cubit.fitnessGoals
            .map((goal) => LookupItem(id: goal.id, name: goal.name, description: goal.description, icon: goal.icon))
            .toList();

        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.pageTitleFitnessGoals),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go(RouteConstants.onboardingBasicInfo), // Back to BasicInfoPage
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
                    AppLocalizations.of(context)!.labelFitnessGoals,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    AppLocalizations.of(context)!.labelSelectAllChange,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 32),

                  Expanded(
                    child: MultiselectGrid(
                      selectedItems: selectedGoals,
                      items: goalsList,
                      onSelectionChanged: (newSelection) {
                        cubit.updateSelectedGoals(newSelection.toSet());
                      },
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Continue button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: selectedGoals.isNotEmpty
                          ? () {
                              cubit.save();
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text(
                        selectedGoals.isEmpty
                            ? AppLocalizations.of(context)!.validatorFitnessGoals
                            : AppLocalizations.of(context)!.labelContinue,
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
