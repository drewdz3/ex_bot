import 'package:ex_bot/features/onboarding/cubits/dietary_preferences_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/features/onboarding/cubits/dietary_preferences_cubit.dart';

/// Dietary preferences and restrictions page
class DietaryPreferencesPage extends StatelessWidget {
  const DietaryPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DietaryPreferencesCubit, DietaryPreferencesState>(
      builder: (context, state) {
        final cubit = context.read<DietaryPreferencesCubit>();

        final currentRestrictions = (state is Loaded) ? state.dietaryRestrictions : <String>[];

        final currentAllergies = (state is Loaded) ? state.allergies : <String>[];

        return Scaffold(
          appBar: AppBar(
            title: const Text('Dietary Preferences'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go('/onboarding/limitations'), // Back to HealthLimitationsPage
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
                    value: 1.0, // 6 of 6 steps
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                  ),

                  const SizedBox(height: 32),

                  Text(
                    'Any dietary preferences?',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'This helps us provide relevant nutrition guidance. All information is optional.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 32),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Dietary Restrictions Section
                          _SectionHeader(title: 'Dietary Restrictions', subtitle: 'Select any that apply to you'),
                          const SizedBox(height: 16),
                          _DietaryRestrictionsSection(
                            selectedRestrictions: currentRestrictions,
                            onSelectionChanged: cubit.updateDietaryRestrictions,
                            onAddCustom: cubit.addCustomDietaryRestriction,
                          ),

                          const SizedBox(height: 32),

                          // Allergies Section
                          _SectionHeader(title: 'Food Allergies', subtitle: 'Let us know about any food allergies'),
                          const SizedBox(height: 16),
                          _AllergiesSection(
                            selectedAllergies: currentAllergies,
                            onSelectionChanged: cubit.updateAllergies,
                            onAddCustom: cubit.addCustomAllergy,
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Complete button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => _completeOnboarding(context, cubit),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text(
                        'Save Preferences',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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

  void _completeOnboarding(BuildContext context, DietaryPreferencesCubit cubit) {
    // TODO: Save dietary preferences and complete onboarding
    DebugLogger.debug('Dietary Preferences: ${cubit.dietaryData}');

    // Navigate to onboarding completion page
    context.go('/onboarding/complete');
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

class _DietaryRestrictionsSection extends StatelessWidget {
  const _DietaryRestrictionsSection({
    required this.selectedRestrictions,
    required this.onSelectionChanged,
    required this.onAddCustom,
  });

  final List<String> selectedRestrictions;
  final ValueChanged<List<String>> onSelectionChanged;
  final ValueChanged<String> onAddCustom;

  static const List<String> _commonRestrictions = [
    'Vegetarian',
    'Vegan',
    'Gluten-Free',
    'Dairy-Free',
    'Keto',
    'Paleo',
    'Low-Carb',
    'Low-Sodium',
    'Diabetic Diet',
    'None',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SelectionChipGrid(
          options: _commonRestrictions,
          selectedItems: selectedRestrictions,
          onSelectionChanged: onSelectionChanged,
        ),
        const SizedBox(height: 16),
        _AddCustomField(label: 'Add other dietary restriction', onAdd: onAddCustom),
      ],
    );
  }
}

class _AllergiesSection extends StatelessWidget {
  const _AllergiesSection({
    required this.selectedAllergies,
    required this.onSelectionChanged,
    required this.onAddCustom,
  });

  final List<String> selectedAllergies;
  final ValueChanged<List<String>> onSelectionChanged;
  final ValueChanged<String> onAddCustom;

  static const List<String> _commonAllergies = [
    'Nuts',
    'Peanuts',
    'Dairy',
    'Eggs',
    'Shellfish',
    'Fish',
    'Soy',
    'Wheat',
    'Sesame',
    'None',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SelectionChipGrid(
          options: _commonAllergies,
          selectedItems: selectedAllergies,
          onSelectionChanged: onSelectionChanged,
        ),
        const SizedBox(height: 16),
        _AddCustomField(label: 'Add specific allergy', onAdd: onAddCustom),
      ],
    );
  }
}

class _SelectionChipGrid extends StatelessWidget {
  const _SelectionChipGrid({required this.options, required this.selectedItems, required this.onSelectionChanged});

  final List<String> options;
  final List<String> selectedItems;
  final ValueChanged<List<String>> onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: options.map((option) {
        final isSelected = selectedItems.contains(option);
        return FilterChip(
          selected: isSelected,
          label: Text(option),
          onSelected: (selected) => _toggleSelection(option),
        );
      }).toList(),
    );
  }

  void _toggleSelection(String option) {
    final newSelection = List<String>.from(selectedItems);

    // Handle "None" selection logic
    if (option == 'None') {
      if (newSelection.contains('None')) {
        newSelection.remove('None');
      } else {
        newSelection.clear();
        newSelection.add('None');
      }
    } else {
      // Remove "None" if selecting something else
      if (newSelection.contains('None')) {
        newSelection.remove('None');
      }

      if (newSelection.contains(option)) {
        newSelection.remove(option);
      } else {
        newSelection.add(option);
      }
    }

    onSelectionChanged(newSelection);
  }
}

class _AddCustomField extends StatefulWidget {
  const _AddCustomField({required this.label, required this.onAdd});

  final String label;
  final ValueChanged<String> onAdd;

  @override
  State<_AddCustomField> createState() => _AddCustomFieldState();
}

class _AddCustomFieldState extends State<_AddCustomField> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  hintText: widget.label,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
                onSubmitted: (value) => _addCustomItem(),
              ),
            ),
            IconButton(onPressed: _addCustomItem, icon: const Icon(Icons.add), visualDensity: VisualDensity.compact),
          ],
        ),
      ),
    );
  }

  void _addCustomItem() {
    if (_controller.text.trim().isNotEmpty) {
      widget.onAdd(_controller.text.trim());
      _controller.clear();
      _focusNode.unfocus();
    }
  }
}
