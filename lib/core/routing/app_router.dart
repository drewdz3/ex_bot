import 'package:ex_bot/app/pages/ai_chat_test_page.dart';
import 'package:ex_bot/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:ex_bot/features/auth/presentation/pages/auth_page.dart';
import 'package:ex_bot/features/onboarding/presentation/pages/basic_info_page.dart';
import 'package:ex_bot/features/onboarding/presentation/pages/fitness_goals_page.dart';
import 'package:ex_bot/features/onboarding/presentation/pages/welcome_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:ex_bot/core/di/injection.dart';

/// App router configuration
final GoRouter appRouter = GoRouter(
  initialLocation: '/auth',
  routes: [
    // Authentication routes
    GoRoute(
      path: '/auth',
      builder: (context, state) {
        return BlocProvider(
          create: (_) => getIt<AuthCubit>()..initializeAuth(),
          child: const AuthPage()
        );
      }
    ),
    
    // Welcome route (after successful login)
    GoRoute(
      path: '/welcome/:firstName',
      builder: (context, state) {
        final firstName = state.pathParameters['firstName'] ?? 'User';
        return WelcomePage(firstName: firstName);
      },
    ),
    
    // Onboarding routes
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
        body: Center(
          child: Text('Workout Preferences (Coming Soon)'),
        ),
      ),
    ),
    
    // Main app - AI Chat
    GoRoute(
      path: '/chat',
      builder: (context, state) => const AIChatTestPage(),
    ),
  ],
);