import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/domain/entities/lookup_item.dart';
import 'package:ex_bot/features/onboarding/cubits/health_limitations_state.dart';
import 'package:ex_bot/features/widgets/multiselect_grid.dart';
import 'package:ex_bot/features/widgets/section_header.dart';
import 'package:ex_bot/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/features/onboarding/cubits/health_limitations_cubit.dart';

/// Health and physical limitations page
class HealthLimitationsPage extends StatelessWidget {
  const HealthLimitationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HealthLimitationsCubit, HealthLimitationsState>(
      listener: (context, state) {
        if (state is HealthLimitationsStateError) {
          var message = AppConstants.emptyString;
          if (state.message == AppConstants.saveError) {
            message = AppLocalizations.of(context)!.saveError;
          } else {
            message = AppLocalizations.of(context)!.unknownError;
          }

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
        } else if (state is HealthLimitationsStateNext) {
          context.go(state.path);
        } else if (state is HealthLimitationsStateComplete) {
          context.go(RouteConstants.training);
        }
      },
      buildWhen: (previous, current) {
        return current is HealthLimitationsStateLoaded;
      },
      builder: (context, state) {
        final cubit = context.read<HealthLimitationsCubit>();

        final Set<String> selectedConditions = (state is HealthLimitationsStateLoaded) ? state.selectedConditions : {};
        final Set<String> selectedInjuries = (state is HealthLimitationsStateLoaded) ? state.selectedInjuries : {};

        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.pageTitleHealthLimitations),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go(RouteConstants.onboardingSchedule), // Back to WorkoutSchedulePage
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
                    value: 0.83333, // 5 of 6 steps
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                  ),

                  const SizedBox(height: 32),

                  Text(
                    AppLocalizations.of(context)!.infoHealthLimitations,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    AppLocalizations.of(context)!.labelHealthLimitations,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 32),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Health Conditions Section
                          SectionHeader(
                            title: AppLocalizations.of(context)!.labelHealthConditions,
                            subtitle: AppLocalizations.of(context)!.infoHealthConditions,
                          ),
                          const SizedBox(height: 16),
                          MultiselectGrid(
                            selectedItems: selectedConditions,
                            onSelectionChanged: cubit.updateConditions,
                            items: cubit.healthConditions
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

                          // Injuries/Physical Limitations Section
                          SectionHeader(
                            title: AppLocalizations.of(context)!.labelLimitations,
                            subtitle: AppLocalizations.of(context)!.infoLimitations,
                          ),
                          const SizedBox(height: 16),
                          MultiselectGrid(
                            selectedItems: selectedInjuries,
                            onSelectionChanged: cubit.updateInjuries,
                            items: cubit.commonInjuries
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

                  // Continue button
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
                      onPressed: () => context.go(RouteConstants.training),
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
