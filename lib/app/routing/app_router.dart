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

class RouteConstants {
  static const String landing = '/';
  static const String welcome = '/welcome/:userId';
  static const String welcomeShort = '/welcome/';
  static const String onboardingBasicInfo = '/onboarding';
  static const String onboardingGoals = '/onboarding/goals';
  static const String onboardingPreferences = '/onboarding/preferences';
  static const String onboardingSchedule = '/onboarding/schedule';
  static const String onboardingLimitations = '/onboarding/limitations';
  static const String onboardingDietary = '/onboarding/dietary';
  static const String onboardingComplete = '/onboarding/complete';
  static const String chat = '/chat';
}

/// App router configuration
final GoRouter appRouter = GoRouter(
  initialLocation: RouteConstants.landing,
  routes: [
    GoRoute(
      path: RouteConstants.landing,
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<LandingCubit>()..initializeAuth(), child: const LandingPage());
      },
    ),

    GoRoute(
      path: RouteConstants.welcome,
      builder: (context, state) {
        final userId = state.pathParameters['userId'] ?? '0';
        return BlocProvider(
          create: (_) => getIt<WelcomeCubit>()..initialize(userId),
          child: WelcomePage(userId: userId),
        );
      },
    ),

    GoRoute(
      path: RouteConstants.onboardingBasicInfo,
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<BasicInfoCubit>(), child: const BasicInfoPage());
      },
    ),

    GoRoute(
      path: RouteConstants.onboardingGoals,
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<FitnessGoalsCubit>()..initialize(), child: FitnessGoalsPage());
      },
    ),

    GoRoute(
      path: RouteConstants.onboardingPreferences,
      builder: (context, state) {
        return BlocProvider(
          create: (_) => getIt<WorkoutPreferencesCubit>()..initialize(),
          child: const WorkoutPreferencesPage(),
        );
      },
    ),

    GoRoute(
      path: RouteConstants.onboardingSchedule,
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<WorkoutScheduleCubit>(), child: const WorkoutSchedulePage());
      },
    ),

    GoRoute(
      path: RouteConstants.onboardingLimitations,
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<HealthLimitationsCubit>(), child: const HealthLimitationsPage());
      },
    ),

    GoRoute(
      path: RouteConstants.onboardingDietary,
      builder: (context, state) {
        return BlocProvider(create: (_) => getIt<DietaryPreferencesCubit>(), child: const DietaryPreferencesPage());
      },
    ),

    GoRoute(
      path: RouteConstants.onboardingComplete,
      builder: (context, state) =>
          BlocProvider(create: (_) => getIt<OnboardingCompleteCubit>(), child: const OnboardingCompletePage()),
    ),

    GoRoute(path: RouteConstants.chat, builder: (context, state) => const AIChatTestPage()),
  ],
);
