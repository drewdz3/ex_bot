import 'package:ex_bot/core/utils/icon_lookup.dart';
import 'package:ex_bot/domain/entities/lookup_item.dart';
import 'package:ex_bot/features/widgets/selectable_card.dart';
import 'package:flutter/material.dart';

class MultiselectGrid extends StatelessWidget {
  const MultiselectGrid({
    required this.selectedItems,
    required this.onSelectionChanged,
    required this.items,
    super.key,
  });

  final Set<String> selectedItems;
  final ValueChanged<Set<String>> onSelectionChanged;
  final List<LookupItem> items;

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
      itemCount: items.length,
      itemBuilder: (context, index) {
        final option = items[index];
        final isSelected = selectedItems.contains(option.id);

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

  void _toggleSelection(String equipment) {
    final newSelection = Set<String>.from(selectedItems);
    if (newSelection.contains(equipment)) {
      newSelection.remove(equipment);
    } else {
      newSelection.add(equipment);
    }
    onSelectionChanged(newSelection);
  }
}
