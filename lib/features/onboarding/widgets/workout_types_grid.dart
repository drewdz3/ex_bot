import 'package:ex_bot/core/utils/icon_lookup.dart';
import 'package:ex_bot/features/onboarding/cubits/workout_preferences_cubit.dart';
import 'package:ex_bot/features/onboarding/widgets/selectable_card.dart';
import 'package:flutter/material.dart';

class WorkoutTypesGrid extends StatelessWidget {
  const WorkoutTypesGrid({required this.cubit, required this.selectedTypes, required this.onSelectionChanged});

  final WorkoutPreferencesCubit cubit;
  final List<String> selectedTypes;
  final ValueChanged<List<String>> onSelectionChanged;

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
      itemCount: cubit.workoutTypes.length,
      itemBuilder: (context, index) {
        final option = cubit.workoutTypes[index];
        final isSelected = selectedTypes.contains(option.id);

        return SelectableCard(
          isSelected: isSelected,
          onTap: () => _toggleSelection(option.id),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                getIconByName(option.icon ?? ''),
                size: 24,
                color: isSelected ? Theme.of(context).primaryColor : Colors.grey[600],
              ),
              const SizedBox(height: 4),
              Text(
                option.name,
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

  void _toggleSelection(String type) {
    final newSelection = List<String>.from(selectedTypes);
    if (newSelection.contains(type)) {
      newSelection.remove(type);
    } else {
      newSelection.add(type);
    }
    onSelectionChanged(newSelection);
  }
}
