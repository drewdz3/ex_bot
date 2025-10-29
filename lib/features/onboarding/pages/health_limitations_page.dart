import 'package:ex_bot/features/onboarding/cubits/health_limitations_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/features/onboarding/cubits/health_limitations_cubit.dart';

/// Health and physical limitations page
class HealthLimitationsPage extends StatelessWidget {
  const HealthLimitationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HealthLimitationsView();
  }
}

class _HealthLimitationsView extends StatelessWidget {
  const _HealthLimitationsView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HealthLimitationsCubit, HealthLimitationsState>(
      builder: (context, state) {
        final cubit = context.read<HealthLimitationsCubit>();

        final currentHealthConditions = (state is Loaded) ? state.healthConditions : <String>[];
        final currentInjuries = (state is Loaded) ? state.injuriesOrLimitations : <String>[];

        return Scaffold(
          appBar: AppBar(
            title: const Text('Health & Limitations'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go('/onboarding/schedule'), // Back to WorkoutSchedulePage
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
                    value: 0.83333, // 5 of 6 steps
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                  ),

                  const SizedBox(height: 32),

                  Text(
                    'Any health considerations?',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'Help us personalize safe workouts for you. All information is optional and kept private.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 32),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Health Conditions Section
                          _SectionHeader(
                            title: 'Health Conditions',
                            subtitle: 'Select any conditions that may affect your workouts',
                          ),
                          const SizedBox(height: 16),
                          _HealthConditionsSection(
                            selectedConditions: currentHealthConditions,
                            onSelectionChanged: cubit.updateHealthConditions,
                            onAddCustom: cubit.addCustomHealthCondition,
                          ),

                          const SizedBox(height: 32),

                          // Injuries/Physical Limitations Section
                          _SectionHeader(
                            title: 'Injuries & Physical Limitations',
                            subtitle: 'Any current or past injuries we should know about',
                          ),
                          const SizedBox(height: 16),
                          _InjuriesSection(
                            selectedInjuries: currentInjuries,
                            onSelectionChanged: cubit.updateInjuriesOrLimitations,
                            onAddCustom: cubit.addCustomInjury,
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
                      onPressed: () => _continueToNext(context, cubit),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text('Continue', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
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

  void _continueToNext(BuildContext context, HealthLimitationsCubit cubit) {
    // TODO: Save health limitations and navigate to dietary preferences page
    DebugLogger.debug('Health Limitations: ${cubit.limitationsData}');

    // Navigate to dietary preferences page
    context.go('/onboarding/dietary');
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

class _HealthConditionsSection extends StatelessWidget {
  const _HealthConditionsSection({
    required this.selectedConditions,
    required this.onSelectionChanged,
    required this.onAddCustom,
  });

  final List<String> selectedConditions;
  final ValueChanged<List<String>> onSelectionChanged;
  final ValueChanged<String> onAddCustom;

  static const List<String> _commonConditions = [
    'Diabetes',
    'High Blood Pressure',
    'Heart Disease',
    'Asthma',
    'Arthritis',
    'Osteoporosis',
    'Chronic Pain',
    'Anxiety/Depression',
    'None',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SelectionChipGrid(
          options: _commonConditions,
          selectedItems: selectedConditions,
          onSelectionChanged: onSelectionChanged,
        ),
        const SizedBox(height: 16),
        _AddCustomField(label: 'Add other health condition', onAdd: onAddCustom),
      ],
    );
  }
}

class _InjuriesSection extends StatelessWidget {
  const _InjuriesSection({required this.selectedInjuries, required this.onSelectionChanged, required this.onAddCustom});

  final List<String> selectedInjuries;
  final ValueChanged<List<String>> onSelectionChanged;
  final ValueChanged<String> onAddCustom;

  static const List<String> _commonInjuries = [
    'Back Pain',
    'Knee Issues',
    'Shoulder Injury',
    'Ankle/Foot Problems',
    'Neck Problems',
    'Hip Issues',
    'Wrist/Hand Pain',
    'Previous Surgery',
    'None',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SelectionChipGrid(
          options: _commonInjuries,
          selectedItems: selectedInjuries,
          onSelectionChanged: onSelectionChanged,
        ),
        const SizedBox(height: 16),
        _AddCustomField(label: 'Add specific injury or limitation', onAdd: onAddCustom),
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
