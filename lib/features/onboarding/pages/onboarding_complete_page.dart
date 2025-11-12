import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/features/onboarding/cubits/onboarding_complete_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/onboarding_complete_state.dart';
import 'package:ex_bot/l10n/app_localizations.dart';

class OnboardingCompletePage extends StatelessWidget {
  const OnboardingCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingCompleteCubit, OnboardingCompleteState>(
      listener: (context, state) {
        if (state is OnboardingCompleteStateCompleted) {
          context.go(state.path);
        } else if (state is OnboardingCompleteStateError) {
          var message = AppLocalizations.of(context)!.unknownError;
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
        }
      },
      buildWhen: (previous, current) {
        return true;
      },
      builder: (context, state) {
        final cubit = context.read<OnboardingCompleteCubit>();
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const Spacer(flex: 2),

                  // Success illustration
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(color: Colors.green.withValues(alpha: 0.1), shape: BoxShape.circle),
                    child: const Icon(Icons.check_circle, size: 80, color: Colors.green),
                  ),

                  const SizedBox(height: 32),

                  // Success message
                  Text(
                    '${AppLocalizations.of(context)!.pageTitleComplete} 🎉',
                    style: Theme.of(
                      context,
                    ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold, color: Colors.green),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 16),

                  Text(
                    AppLocalizations.of(context)!.infoComplete,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey[600]),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 48),

                  // Features preview
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          _FeatureItem(
                            icon: Icons.psychology,
                            title: AppLocalizations.of(context)!.labelOverviewWorkouts,
                            description: AppLocalizations.of(context)!.infoOverviewWorkouts,
                          ),
                          const SizedBox(height: 16),
                          _FeatureItem(
                            icon: Icons.track_changes,
                            title: AppLocalizations.of(context)!.labelOverviewTracking,
                            description: AppLocalizations.of(context)!.infoOverviewTracking,
                          ),
                          const SizedBox(height: 16),
                          _FeatureItem(
                            icon: Icons.chat,
                            title: AppLocalizations.of(context)!.labelOverviewCoach,
                            description: AppLocalizations.of(context)!.infoOverviewCoach,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const Spacer(flex: 3),

                  // Start journey button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: cubit.completeOnboarding,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.labelStart,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Settings note
                  Text(
                    AppLocalizations.of(context)!.labelUpdateInfo,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey[600]),
                    textAlign: TextAlign.center,
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

class _FeatureItem extends StatelessWidget {
  const _FeatureItem({required this.icon, required this.title, required this.description});

  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Theme.of(context).primaryColor, size: 24),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(height: 4),
              Text(description, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600])),
            ],
          ),
        ),
      ],
    );
  }
}
