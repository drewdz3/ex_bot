import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/data/models/auth_status.dart';
import 'package:ex_bot/features/landing/cubits/landing_cubit.dart';
import 'package:ex_bot/l10n/app_localizations.dart';

@injectable
class LandingPage extends StatelessWidget {
  const LandingPage() : super(key: AppConstants.authPageKey);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingCubit, AuthStatus>(
      listener: (context, state) {
        if (state is Loading) {
          // Loading handled in UI
        } else if (state is Authenticated) {
          final user = state.user;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(AppLocalizations.of(context)!.welcomeBack(user.displayName ?? 'who are you?')),
              backgroundColor: Colors.green,
            ),
          );
          context.go('/welcome/${user.displayName ?? AppConstants.emptyString}');
        } else if (state is Unauthenticated) {
          // Stay on login page
        } else if (state is AuthError) {
          final message = state.message;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(AppLocalizations.of(context)!.errorSignInFailed(message)),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        final cubit = context.read<LandingCubit>();
        final isLoading = (state is Loading) ? true : false;

        void signIn() {
          cubit.signIn();
        }

        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const Spacer(),

                  // App logo/icon
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(color: Theme.of(context).primaryColor, shape: BoxShape.circle),
                    child: const Icon(Icons.fitness_center, size: 60, color: Colors.white),
                  ),

                  const SizedBox(height: 32),

                  // App name
                  Text(
                    AppLocalizations.of(context)!.appTitle,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    AppLocalizations.of(context)!.appTitle,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 48),

                  // Features preview
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          _FeaturePreview(
                            icon: Icons.psychology,
                            text: AppLocalizations.of(context)!.infoPersonalizedCouching,
                          ),
                          const SizedBox(height: 12),
                          _FeaturePreview(
                            icon: Icons.track_changes,
                            text: AppLocalizations.of(context)!.infoProgressTracking,
                          ),
                          const SizedBox(height: 12),
                          _FeaturePreview(
                            icon: Icons.restaurant,
                            text: AppLocalizations.of(context)!.infoNutritionAdvice,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const Spacer(),

                  // Sign in button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: isLoading ? null : signIn,
                      icon: isLoading
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                              ),
                            )
                          : const Icon(Icons.login),
                      label: isLoading
                          ? Text(AppLocalizations.of(context)!.infoSigningIn)
                          : Text(
                              AppLocalizations.of(context)!.btnSignIn,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Account requirement notice
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.blue.shade200),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.info_outline, color: Colors.blue.shade700, size: 20),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            AppLocalizations.of(context)!.infoAuthRequired,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.blue.shade700),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Terms and privacy
                  Text(
                    AppLocalizations.of(context)!.infoTermsPrivacy,
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

class _FeaturePreview extends StatelessWidget {
  const _FeaturePreview({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Theme.of(context).primaryColor, size: 20),
        const SizedBox(width: 12),
        Text(text, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[700])),
      ],
    );
  }
}
