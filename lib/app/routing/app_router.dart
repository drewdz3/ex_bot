    import 'package:flutter/material.dart';
    import 'package:flutter_bloc/flutter_bloc.dart';
    import 'package:go_router/go_router.dart';

    import 'package:ex_bot/app/pages/ai_chat_test_page.dart';
    import 'package:ex_bot/core/di/injection.dart';
    import 'package:ex_bot/features/landing/cubits/landing_cubit.dart';
    import 'package:ex_bot/features/landing/pages/landing_page.dart';
    import 'package:ex_bot/features/onboarding/pages/basic_info_page.dart';
    import 'package:ex_bot/features/onboarding/pages/fitness_goals_page.dart';
    import 'package:ex_bot/features/onboarding/pages/welcome_page.dart';

    /// App router configuration
    final GoRouter appRouter = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return BlocProvider(
              create: (_) => getIt<LandingCubit>()..initializeAuth(),
              child: const LandingPage(),
            );
          },
        ),

        GoRoute(
          path: '/welcome/:givenName',
          builder: (context, state) {
            final givenName = state.pathParameters['givenName'] ?? 'User';
            return WelcomePage(givenName: givenName);
          },
        ),

        GoRoute(
          path: '/onboarding',
          builder: (context, state) => const BasicInfoPage(),
        ),

        GoRoute(
          path: '/onboarding/goals',
          builder: (context, state) => const FitnessGoalsPage(),
        ),

        GoRoute(
          path: '/onboarding/preferences',
          builder: (context, state) => const Scaffold(
            body: Center(child: Text('Workout Preferences (Coming Soon)')),
          ),
        ),

        GoRoute(
          path: '/chat',
          builder: (context, state) => const AIChatTestPage(),
        ),
      ],
    );
