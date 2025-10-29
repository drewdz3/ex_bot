import 'package:ex_bot/features/onboarding/cubits/basic_info_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/fitness_goals_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/onboarding_complete_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/welcome_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/app/pages/ai_chat_test_page.dart';
import 'package:ex_bot/core/di/injection.dart';
import 'package:ex_bot/features/landing/cubits/landing_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/dietary_preferences_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/health_limitations_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_preferences_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_schedule_cubit.dart';
import 'package:ex_bot/features/landing/pages/landing_page.dart';
import 'package:ex_bot/features/onboarding/pages/basic_info_page.dart';
import 'package:ex_bot/features/onboarding/pages/dietary_preferences_page.dart';
import 'package:ex_bot/features/onboarding/pages/fitness_goals_page.dart';
import 'package:ex_bot/features/onboarding/pages/health_limitations_page.dart';
import 'package:ex_bot/features/onboarding/pages/onboarding_complete_page.dart';
import 'package:ex_bot/features/onboarding/pages/welcome_page.dart';
import 'package:ex_bot/features/onboarding/pages/workout_preferences_page.dart';
import 'package:ex_bot/features/onboarding/pages/workout_schedule_page.dart';

/// App router configuration
final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<LandingCubit>()..initializeAuth(), child: const LandingPage());
      },
    ),

    GoRoute(
      path: '/welcome/:givenName',
      builder: (context, state) {
        final givenName = state.pathParameters['givenName'] ?? 'User';
        return BlocProvider(
          create: (_) => getIt<WelcomeCubit>()..initialize(givenName),
          child: WelcomePage(givenName: givenName),
        );
      },
    ),

    GoRoute(
      path: '/onboarding',
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<BasicInfoCubit>(), child: const BasicInfoPage());
      },
    ),

    GoRoute(
      path: '/onboarding/goals',
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<FitnessGoalsCubit>()..initialize(), child: FitnessGoalsPage());
      },
    ),

    GoRoute(
      path: '/onboarding/preferences',
      builder: (context, state) {
        return BlocProvider(
          create: (_) => getIt<WorkoutPreferencesCubit>()..initialize(),
          child: const WorkoutPreferencesPage(),
        );
      },
    ),

    GoRoute(
      path: '/onboarding/schedule',
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<WorkoutScheduleCubit>(), child: const WorkoutSchedulePage());
      },
    ),

    GoRoute(
      path: '/onboarding/limitations',
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<HealthLimitationsCubit>(), child: const HealthLimitationsPage());
      },
    ),

    GoRoute(
      path: '/onboarding/dietary',
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<DietaryPreferencesCubit>(), child: const DietaryPreferencesPage());
      },
    ),

    GoRoute(
      path: '/onboarding/complete',
      builder: (context, state) =>
          BlocProvider(create: (_) => getIt<OnboardingCompleteCubit>(), child: const OnboardingCompletePage()),
    ),

    GoRoute(path: '/chat', builder: (context, state) => const AIChatTestPage()),
  ],
);
