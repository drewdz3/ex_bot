import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/debug_logger.dart';

/// Fitness goals selection page
class FitnessGoalsPage extends StatefulWidget {
  const FitnessGoalsPage({super.key});

  @override
  State<FitnessGoalsPage> createState() => _FitnessGoalsPageState();
}

class _FitnessGoalsPageState extends State<FitnessGoalsPage> {
  final Set<String> _selectedGoals = {};
  
  final List<GoalOption> _goalOptions = [
    GoalOption(
      id: 'lose_weight',
      title: 'Lose Weight',
      description: 'Burn calories and reduce body fat',
      icon: Icons.trending_down,
    ),
    GoalOption(
      id: 'gain_muscle',
      title: 'Gain Muscle',
      description: 'Build strength and muscle mass',
      icon: Icons.fitness_center,
    ),
    GoalOption(
      id: 'improve_endurance',
      title: 'Improve Endurance',
      description: 'Increase cardiovascular fitness',
      icon: Icons.directions_run,
    ),
    GoalOption(
      id: 'increase_strength',
      title: 'Increase Strength',
      description: 'Build overall body strength',
      icon: Icons.sports_gymnastics,
    ),
    GoalOption(
      id: 'improve_flexibility',
      title: 'Improve Flexibility',
      description: 'Enhance mobility and flexibility',
      icon: Icons.self_improvement,
    ),
    GoalOption(
      id: 'general_health',
      title: 'General Health',
      description: 'Maintain overall health and wellness',
      icon: Icons.favorite,
    ),
    GoalOption(
      id: 'stress_relief',
      title: 'Stress Relief',
      description: 'Reduce stress and improve mental health',
      icon: Icons.spa,
    ),
    GoalOption(
      id: 'athletic_performance',
      title: 'Athletic Performance',
      description: 'Enhance sports performance',
      icon: Icons.emoji_events,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Goals'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Progress indicator
              LinearProgressIndicator(
                value: 0.5, // 2 of 4 steps
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor,
                ),
              ),
              
              const SizedBox(height: 32),
              
              Text(
                'What are your fitness goals?',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 8),
              
              Text(
                'Select all that apply. You can change these later.',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
              ),
              
              const SizedBox(height: 32),
              
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: _goalOptions.length,
                  itemBuilder: (context, index) {
                    final goal = _goalOptions[index];
                    final isSelected = _selectedGoals.contains(goal.id);
                    
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            _selectedGoals.remove(goal.id);
                          } else {
                            _selectedGoals.add(goal.id);
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isSelected 
                                ? Theme.of(context).primaryColor
                                : Colors.grey[300]!,
                            width: 1.5,
                          ),
                          color: isSelected 
                              ? Theme.of(context).primaryColor.withValues(alpha: 0.1)
                              : Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey[200],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  goal.icon,
                                  color: isSelected 
                                      ? Colors.white 
                                      : Colors.grey[600],
                                  size: 18,
                                ),
                              ),
                              
                              const SizedBox(height: 6),
                              
                              Text(
                                goal.title,
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                  color: isSelected 
                                      ? Theme.of(context).primaryColor
                                      : null,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              
              const SizedBox(height: 24),
              
              // Continue button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _selectedGoals.isNotEmpty ? _continueToNext : null,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    _selectedGoals.isEmpty 
                        ? 'Select at least one goal'
                        : 'Continue (${_selectedGoals.length} selected)',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              
              const SizedBox(height: 16),
              
              // Skip button
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => context.go('/chat'),
                  child: const Text('Skip for now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  void _continueToNext() {
    // TODO: Save selected goals and navigate to workout preferences
    DebugLogger.debug('Selected Goals: $_selectedGoals');
    
    // Navigate to workout preferences page
    context.go('/onboarding/preferences');
  }
}

class GoalOption {
  const GoalOption({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
  });
  
  final String id;
  final String title;
  final String description;
  final IconData icon;
}