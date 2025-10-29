import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/features/onboarding/cubits/welcome_state.dart';
import 'package:ex_bot/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/features/onboarding/cubits/welcome_cubit.dart';

/// Welcome page for new users after authentication
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key, required this.givenName});

  final String givenName;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomeCubit, WelcomeState>(
      builder: (context, state) {
        final cubit = context.read<WelcomeCubit>();

        // Initialize with the given name
        WidgetsBinding.instance.addPostFrameCallback((_) {
          cubit.initialize(givenName);
        });

        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const Spacer(),

                  // Welcome illustration or icon
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.fitness_center, size: 60, color: Theme.of(context).primaryColor),
                  ),

                  const SizedBox(height: 32),

                  // Welcome text
                  Text(
                    '${AppLocalizations.of(context)!.pageTitleWelcome} $givenName! 👋',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 16),

                  Text(
                    AppLocalizations.of(context)!.labelWelcome,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey[600]),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 32),

                  // Features list
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          _FeatureItem(
                            icon: Icons.psychology,
                            title: AppLocalizations.of(context)!.labelFeaturePersonalized,
                            description: AppLocalizations.of(context)!.infoFeaturePersonalized,
                          ),
                          const SizedBox(height: 16),
                          _FeatureItem(
                            icon: Icons.track_changes,
                            title: AppLocalizations.of(context)!.labelFeatureTracking,
                            description: AppLocalizations.of(context)!.infoFeatureTracking,
                          ),
                          const SizedBox(height: 16),
                          _FeatureItem(
                            icon: Icons.restaurant,
                            title: AppLocalizations.of(context)!.labelFeatureNutrition,
                            description: AppLocalizations.of(context)!.infoFeatureNutrition,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const Spacer(),

                  // Get started button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        cubit.startOnboarding();
                        context.go(RouteConstants.onboardingBasicInfo);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.labelGetStarted,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  TextButton(
                    onPressed: () {
                      cubit.skipOnboarding();
                      context.go(RouteConstants.chat);
                    },
                    child: Text(AppLocalizations.of(context)!.labelSkip),
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
