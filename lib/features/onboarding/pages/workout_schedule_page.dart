import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_schedule_state.dart';
import 'package:ex_bot/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/features/onboarding/cubits/workout_schedule_cubit.dart';

/// Workout schedule preferences page
class WorkoutSchedulePage extends StatelessWidget {
  const WorkoutSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkoutScheduleCubit, WorkoutScheduleState>(
      listener: (context, state) {
        if (state is WorkoutScheduleStateError) {
          var message = AppConstants.emptyString;
          if (state.message == AppConstants.saveError) {
            message = AppLocalizations.of(context)!.saveError;
          } else {
            message = AppLocalizations.of(context)!.unknownError;
          }
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
        } else if (state is WorkoutScheduleStateNext) {
          context.go(state.path);
        } else if (state is WorkoutScheduleStateComplete) {
          context.go(RouteConstants.chat);
        }
      },
      buildWhen: (previous, current) {
        return current is WorkoutScheduleStateLoaded;
      },
      builder: (context, state) {
        final cubit = context.read<WorkoutScheduleCubit>();
        final currentFrequency = (state is WorkoutScheduleStateLoaded) ? state.frequency : null;
        final currentDuration = (state is WorkoutScheduleStateLoaded) ? state.duration : null;

        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.pageTitleSchedule),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go(RouteConstants.onboardingPreferences), // Back to WorkoutPreferencesPage
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
                    value: 0.66667, // 4 of 6 steps
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                  ),

                  const SizedBox(height: 32),

                  Text(
                    AppLocalizations.of(context)!.labelSchedule,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    AppLocalizations.of(context)!.infoSchedule,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 32),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _ScheduleSelectors(
                            frequency: currentFrequency,
                            duration: currentDuration,
                            onFrequencyChanged: cubit.updateFrequency,
                            onDurationChanged: cubit.updateDuration,
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
                      onPressed: cubit.canContinue ? cubit.save : null,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text(
                        cubit.canContinue
                            ? AppLocalizations.of(context)!.labelContinue
                            : AppLocalizations.of(context)!.validatorSchedule,
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

class _ScheduleSelectors extends StatelessWidget {
  const _ScheduleSelectors({
    required this.frequency,
    required this.duration,
    required this.onFrequencyChanged,
    required this.onDurationChanged,
  });

  final int? frequency;
  final int? duration;
  final ValueChanged<int?> onFrequencyChanged;
  final ValueChanged<int?> onDurationChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Frequency selector
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_today, size: 20, color: Theme.of(context).primaryColor),
                    const SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.labelScheduleDays,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  AppLocalizations.of(context)!.infoScheduleDays,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  children: List.generate(7, (index) {
                    final freq = index + 1;
                    final isSelected = frequency == freq;
                    return FilterChip(
                      selected: isSelected,
                      label: Text('$freq'),
                      onSelected: (selected) {
                        onFrequencyChanged(selected ? freq : null);
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 16),

        // Duration selector
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.schedule, size: 20, color: Theme.of(context).primaryColor),
                    const SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.labelDuration,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  AppLocalizations.of(context)!.infoDuration,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [15, 30, 45, 60, 90].map((dur) {
                    final isSelected = duration == dur;
                    return FilterChip(
                      selected: isSelected,
                      label: Text('$dur min'),
                      onSelected: (selected) {
                        onDurationChanged(selected ? dur : null);
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 24),

        // Additional tips card
        Card(
          color: Theme.of(context).primaryColor.withValues(alpha: 0.05),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.lightbulb_outline, size: 20, color: Theme.of(context).primaryColor),
                    const SizedBox(width: 8),
                    Text(
                      AppLocalizations.of(context)!.labelScheduleTips,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '• ${AppLocalizations.of(context)!.infoScheduleTip1}\n• ${AppLocalizations.of(context)!.infoScheduleTip2}\n• ${AppLocalizations.of(context)!.infoScheduleTip3}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
