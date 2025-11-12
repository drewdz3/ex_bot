import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/domain/entities/lookup_item.dart';
import 'package:ex_bot/features/onboarding/widgets/multiselect_grid.dart';
import 'package:ex_bot/features/onboarding/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/features/onboarding/cubits/dietary_preferences_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/dietary_preferences_state.dart';
import 'package:ex_bot/l10n/app_localizations.dart';

class DietaryPreferencesPage extends StatelessWidget {
  const DietaryPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DietaryPreferencesCubit, DietaryPreferencesState>(
      listener: (context, state) {
        if (state is DietaryPreferencesStateError) {
          var message = AppConstants.emptyString;
          if (state.message == AppConstants.saveError) {
            message = AppLocalizations.of(context)!.saveError;
          } else {
            message = AppLocalizations.of(context)!.unknownError;
          }
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
        } else if (state is DietaryPreferencesStateNext) {
          context.go(state.path);
        } else if (state is DietaryPreferencesStateComplete) {
          context.go(RouteConstants.chat);
        }
      },
      buildWhen: (previous, current) {
        return current is DietaryPreferencesStateLoaded;
      },
      builder: (context, state) {
        final cubit = context.read<DietaryPreferencesCubit>();

        final selectedDietTypes = (state is DietaryPreferencesStateLoaded) ? state.selectedDietTypes : <String>{};

        final selectedAllergies = (state is DietaryPreferencesStateLoaded) ? state.selectedAllergies : <String>{};

        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.pageTitleDietaryPreferences),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go(RouteConstants.onboardingLimitations), // Back to HealthLimitationsPage
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
                    value: 1.0, // 6 of 6 steps
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                  ),

                  const SizedBox(height: 32),

                  Text(
                    AppLocalizations.of(context)!.infoDietaryPreferences,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    AppLocalizations.of(context)!.labelDietaryPreferences,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 32),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Dietary Restrictions Section
                          SectionHeader(
                            title: AppLocalizations.of(context)!.labelDietaryRestrictions,
                            subtitle: AppLocalizations.of(context)!.infoDietaryRestrictions,
                          ),
                          const SizedBox(height: 16),
                          MultiselectGrid(
                            selectedItems: selectedDietTypes,
                            onSelectionChanged: cubit.updateDietTypes,
                            items: cubit.dietTypes
                                .map(
                                  (type) => LookupItem(
                                    id: type.id,
                                    name: type.name,
                                    description: AppConstants.emptyString,
                                    icon: AppConstants.emptyString,
                                  ),
                                )
                                .toList(),
                          ),

                          const SizedBox(height: 32),

                          // Allergies Section
                          SectionHeader(
                            title: AppLocalizations.of(context)!.labelFoodAllergies,
                            subtitle: AppLocalizations.of(context)!.infoFoodAllergies,
                          ),
                          const SizedBox(height: 16),
                          MultiselectGrid(
                            selectedItems: selectedAllergies,
                            onSelectionChanged: cubit.updateAllergies,
                            items: cubit.allergyTypes
                                .map(
                                  (type) => LookupItem(
                                    id: type.id,
                                    name: type.name,
                                    description: AppConstants.emptyString,
                                    icon: AppConstants.emptyString,
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Complete button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: cubit.save,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.labelContinue,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
