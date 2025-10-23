import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/domain/entities/user_preferences.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_preferences_cubit.dart';

/// Workout preferences selection page
class WorkoutPreferencesPage extends StatelessWidget {
  const WorkoutPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _WorkoutPreferencesView();
  }
}

class _WorkoutPreferencesView extends StatelessWidget {
  const _WorkoutPreferencesView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutPreferencesCubit, WorkoutPreferencesState>(
      builder: (context, state) {
        final cubit = context.read<WorkoutPreferencesCubit>();

        final currentWorkoutTypes = state.maybeWhen(loaded: (types, _) => types, orElse: () => <WorkoutType>[]);

        final currentEquipment = state.maybeWhen(loaded: (_, equipment) => equipment, orElse: () => <Equipment>[]);

        return Scaffold(
          appBar: AppBar(
            title: const Text('Workout Preferences'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go('/onboarding/goals'), // Back to FitnessGoalsPage
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Progress indicator
                  LinearProgressIndicator(
                    value: 0.5, // 3 of 6 steps
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                  ),

                  const SizedBox(height: 32),

                  Text(
                    'What are your workout preferences?',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'Help us personalize your fitness experience.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 32),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Workout Types Section
                          _SectionHeader(
                            title: 'Preferred Workout Types',
                            subtitle: 'Select the training styles you enjoy',
                          ),
                          const SizedBox(height: 16),
                          _WorkoutTypesGrid(
                            selectedTypes: currentWorkoutTypes,
                            onSelectionChanged: cubit.updateWorkoutTypes,
                          ),

                          const SizedBox(height: 32),

                          // Activities Section
                          _SectionHeader(title: 'Favorite Activities', subtitle: 'Choose activities you love to do'),
                          const SizedBox(height: 16),
                          _ActivitiesGrid(
                            selectedTypes: currentWorkoutTypes,
                            onSelectionChanged: cubit.updateWorkoutTypes,
                          ),

                          const SizedBox(height: 32),

                          // Available Equipment Section
                          _SectionHeader(
                            title: 'Available Equipment',
                            subtitle: 'What equipment do you have access to?',
                          ),
                          const SizedBox(height: 16),
                          _EquipmentGrid(
                            selectedEquipment: currentEquipment,
                            onSelectionChanged: cubit.updateEquipment,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Continue button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: cubit.canContinue ? () => _continueToNext(context, cubit) : null,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text(
                        cubit.canContinue ? 'Continue' : 'Select at least one workout type',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Skip button
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(onPressed: () => context.go('/chat'), child: const Text('Skip for now')),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _continueToNext(BuildContext context, WorkoutPreferencesCubit cubit) {
    // TODO: Save workout preferences and navigate to workout schedule page
    DebugLogger.debug('Workout Preferences: ${cubit.preferencesData}');

    // Navigate to workout schedule page
    context.go('/onboarding/schedule');
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(height: 4),
        Text(subtitle, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600])),
      ],
    );
  }
}

class _WorkoutTypesGrid extends StatelessWidget {
  const _WorkoutTypesGrid({required this.selectedTypes, required this.onSelectionChanged});

  final List<WorkoutType> selectedTypes;
  final ValueChanged<List<WorkoutType>> onSelectionChanged;

  static const List<_WorkoutTypeOption> _workoutOptions = [
    _WorkoutTypeOption(
      type: WorkoutType.strength,
      title: 'Strength Training',
      icon: Icons.fitness_center,
      description: 'Build muscle and strength',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.cardio,
      title: 'Cardio',
      icon: Icons.directions_run,
      description: 'Improve cardiovascular health',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.pilates,
      title: 'Pilates',
      icon: Icons.sports_gymnastics,
      description: 'Core strength and stability',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.bodyweight,
      title: 'Bodyweight',
      icon: Icons.accessibility_new,
      description: 'No equipment needed',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.crossfit,
      title: 'CrossFit',
      icon: Icons.sports_mma,
      description: 'High-intensity functional fitness',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.stretching,
      title: 'Stretching',
      icon: Icons.nordic_walking,
      description: 'Improve flexibility and mobility',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.dance,
      title: 'Dance',
      icon: Icons.music_note,
      description: 'Fun, rhythmic movement',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.martialArts,
      title: 'Martial Arts',
      icon: Icons.sports_kabaddi,
      description: 'Combat sports and self-defense',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: _workoutOptions.length,
      itemBuilder: (context, index) {
        final option = _workoutOptions[index];
        final isSelected = selectedTypes.contains(option.type);

        return _SelectableCard(
          isSelected: isSelected,
          onTap: () => _toggleSelection(option.type),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(option.icon, size: 32, color: isSelected ? Theme.of(context).primaryColor : Colors.grey[600]),
              const SizedBox(height: 8),
              Text(
                option.title,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Theme.of(context).primaryColor : null,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
    );
  }

  void _toggleSelection(WorkoutType type) {
    final newSelection = List<WorkoutType>.from(selectedTypes);
    if (newSelection.contains(type)) {
      newSelection.remove(type);
    } else {
      newSelection.add(type);
    }
    onSelectionChanged(newSelection);
  }
}

class _ActivitiesGrid extends StatelessWidget {
  const _ActivitiesGrid({required this.selectedTypes, required this.onSelectionChanged});

  final List<WorkoutType> selectedTypes;
  final ValueChanged<List<WorkoutType>> onSelectionChanged;

  static const List<_WorkoutTypeOption> _activityOptions = [
    _WorkoutTypeOption(
      type: WorkoutType.running,
      title: 'Running',
      icon: Icons.directions_run,
      description: 'Outdoor and treadmill running',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.cycling,
      title: 'Cycling',
      icon: Icons.directions_bike,
      description: 'Road and indoor cycling',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.mountainBiking,
      title: 'Mountain Biking',
      icon: Icons.terrain,
      description: 'Off-road cycling adventures',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.swimming,
      title: 'Swimming',
      icon: Icons.pool,
      description: 'Full-body water workout',
    ),
    _WorkoutTypeOption(type: WorkoutType.surfing, title: 'Surfing', icon: Icons.surfing, description: 'Ride the waves'),
    _WorkoutTypeOption(
      type: WorkoutType.skiing,
      title: 'Skiing',
      icon: Icons.downhill_skiing,
      description: 'Winter sports and snow activities',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.hiking,
      title: 'Hiking',
      icon: Icons.hiking,
      description: 'Nature walks and trail adventures',
    ),
    _WorkoutTypeOption(
      type: WorkoutType.rockClimbing,
      title: 'Rock Climbing',
      icon: Icons.landscape,
      description: 'Indoor and outdoor climbing',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: _activityOptions.length,
      itemBuilder: (context, index) {
        final option = _activityOptions[index];
        final isSelected = selectedTypes.contains(option.type);

        return _SelectableCard(
          isSelected: isSelected,
          onTap: () => _toggleSelection(option.type),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(option.icon, size: 32, color: isSelected ? Theme.of(context).primaryColor : Colors.grey[600]),
              const SizedBox(height: 8),
              Text(
                option.title,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Theme.of(context).primaryColor : null,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
    );
  }

  void _toggleSelection(WorkoutType type) {
    final newSelection = List<WorkoutType>.from(selectedTypes);
    if (newSelection.contains(type)) {
      newSelection.remove(type);
    } else {
      newSelection.add(type);
    }
    onSelectionChanged(newSelection);
  }
}

class _EquipmentGrid extends StatelessWidget {
  const _EquipmentGrid({required this.selectedEquipment, required this.onSelectionChanged});

  final List<Equipment> selectedEquipment;
  final ValueChanged<List<Equipment>> onSelectionChanged;

  static const List<_EquipmentOption> _equipmentOptions = [
    _EquipmentOption(equipment: Equipment.noEquipment, title: 'No Equipment', icon: Icons.do_not_disturb_on),
    _EquipmentOption(equipment: Equipment.dumbbells, title: 'Dumbbells', icon: Icons.fitness_center),
    _EquipmentOption(equipment: Equipment.barbells, title: 'Barbells', icon: Icons.fitness_center),
    _EquipmentOption(equipment: Equipment.kettlebells, title: 'Kettlebells', icon: Icons.sports_gymnastics),
    _EquipmentOption(equipment: Equipment.resistanceBands, title: 'Resistance Bands', icon: Icons.straighten),
    _EquipmentOption(equipment: Equipment.pullupBar, title: 'Pull-up Bar', icon: Icons.horizontal_rule),
    _EquipmentOption(equipment: Equipment.yogaMat, title: 'Yoga Mat', icon: Icons.crop_landscape),
    _EquipmentOption(equipment: Equipment.treadmill, title: 'Treadmill', icon: Icons.directions_walk),
    _EquipmentOption(equipment: Equipment.bike, title: 'Exercise Bike', icon: Icons.directions_bike),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.1,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: _equipmentOptions.length,
      itemBuilder: (context, index) {
        final option = _equipmentOptions[index];
        final isSelected = selectedEquipment.contains(option.equipment);

        return _SelectableCard(
          isSelected: isSelected,
          onTap: () => _toggleSelection(option.equipment),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(option.icon, size: 24, color: isSelected ? Theme.of(context).primaryColor : Colors.grey[600]),
              const SizedBox(height: 4),
              Text(
                option.title,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Theme.of(context).primaryColor : null,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
    );
  }

  void _toggleSelection(Equipment equipment) {
    final newSelection = List<Equipment>.from(selectedEquipment);
    if (newSelection.contains(equipment)) {
      newSelection.remove(equipment);
    } else {
      newSelection.add(equipment);
    }
    onSelectionChanged(newSelection);
  }
}

class _SelectableCard extends StatelessWidget {
  const _SelectableCard({required this.isSelected, required this.onTap, required this.child});

  final bool isSelected;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: isSelected ? Theme.of(context).primaryColor : Colors.grey[300]!, width: 1.5),
          color: isSelected ? Theme.of(context).primaryColor.withValues(alpha: 0.1) : Colors.white,
        ),
        child: Padding(padding: const EdgeInsets.all(12.0), child: child),
      ),
    );
  }
}

class _WorkoutTypeOption {
  const _WorkoutTypeOption({required this.type, required this.title, required this.icon, required this.description});

  final WorkoutType type;
  final String title;
  final IconData icon;
  final String description;
}

class _EquipmentOption {
  const _EquipmentOption({required this.equipment, required this.title, required this.icon});

  final Equipment equipment;
  final String title;
  final IconData icon;
}
