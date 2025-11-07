import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/features/onboarding/cubits/dietary_preferences_cubit.dart';
import 'package:ex_bot/features/onboarding/cubits/dietary_preferences_state.dart';
import 'package:ex_bot/l10n/app_localizations.dart';

class DietaryPreferencesPage extends StatelessWidget {
  const DietaryPreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DietaryPreferencesCubit, DietaryPreferencesState>(
      listener: (context, state) {
        if (state is DietaryPreferencesStateError) {
          var message = AppConstants.emptyString;
          if (state.message == AppConstants.saveError) {
            message = AppLocalizations.of(context)!.saveError;
          } else {
            message = AppLocalizations.of(context)!.unknownError;
          }
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red));
        } else if (state is DietaryPreferencesStateNext) {
          context.go(state.path);
        } else if (state is DietaryPreferencesStateComplete) {
          context.go(RouteConstants.chat);
        }
      },
      buildWhen: (previous, current) {
        return current is DietaryPreferencesStateLoaded;
      },
      builder: (context, state) {
        final cubit = context.read<DietaryPreferencesCubit>();

        final currentRestrictions = (state is DietaryPreferencesStateLoaded) ? state.dietaryRestrictions : <String>[];

        final currentAllergies = (state is DietaryPreferencesStateLoaded) ? state.allergies : <String>[];

        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.pageTitleDietaryPreferences),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => context.go(RouteConstants.onboardingLimitations), // Back to HealthLimitationsPage
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
                    AppLocalizations.of(context)!.infoDietaryPreferences,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    AppLocalizations.of(context)!.labelDietaryPreferences,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 32),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Dietary Restrictions Section
                          _SectionHeader(
                            title: AppLocalizations.of(context)!.labelDietaryRestrictions,
                            subtitle: AppLocalizations.of(context)!.infoDietaryRestrictions,
                          ),
                          const SizedBox(height: 16),
                          _DietaryRestrictionsSection(
                            selectedRestrictions: currentRestrictions,
                            onSelectionChanged: cubit.updateDietaryRestrictions,
                            onAddCustom: cubit.addCustomDietaryRestriction,
                          ),

                          const SizedBox(height: 32),

                          // Allergies Section
                          _SectionHeader(
                            title: AppLocalizations.of(context)!.labelFoodAllergies,
                            subtitle: AppLocalizations.of(context)!.infoFoodAllergies,
                          ),
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
                      onPressed: cubit.save,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.labelContinue,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Skip button
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () => context.go(RouteConstants.chat),
                      child: Text(AppLocalizations.of(context)!.labelSkip),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
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
