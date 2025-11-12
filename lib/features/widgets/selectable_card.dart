import 'package:flutter/material.dart';

class SelectableCard extends StatelessWidget {
  const SelectableCard({required this.isSelected, required this.onTap, required this.child, super.key});

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
