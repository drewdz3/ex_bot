import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/onboarding/presentation/pages/welcome_page.dart';
import '../../features/onboarding/presentation/pages/basic_info_page.dart';
import '../../features/onboarding/presentation/pages/fitness_goals_page.dart';
import '../../main.dart';

/// App router configuration
final GoRouter appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    // Authentication routes
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
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