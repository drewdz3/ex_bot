import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Welcome page for new users after authentication
class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
    required this.firstName,
  });
  
  final String firstName;

  @override
  Widget build(BuildContext context) {
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
                child: Icon(
                  Icons.fitness_center,
                  size: 60,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Welcome text
              Text(
                'Welcome to ExBot, $firstName! 👋',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 16),
              
              Text(
                'Your AI-powered fitness coach is ready to help you achieve your fitness goals.',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey[600],
                ),
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
                        title: 'Personalized Coaching',
                        description: 'AI-powered guidance tailored to your needs',
                      ),
                      const SizedBox(height: 16),
                      _FeatureItem(
                        icon: Icons.track_changes,
                        title: 'Progress Tracking',
                        description: 'Monitor your fitness journey over time',
                      ),
                      const SizedBox(height: 16),
                      _FeatureItem(
                        icon: Icons.restaurant,
                        title: 'Nutrition Guidance',
                        description: 'Meal planning and dietary recommendations',
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
                  onPressed: () => context.go('/onboarding'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              
              const SizedBox(height: 16),
              
              TextButton(
                onPressed: () => context.go('/chat'),
                child: const Text('Skip for now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  const _FeatureItem({
    required this.icon,
    required this.title,
    required this.description,
  });
  
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
          child: Icon(
            icon,
            color: Theme.of(context).primaryColor,
            size: 24,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}