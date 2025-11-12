import 'package:ex_bot/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class DietPage extends StatelessWidget {
  const DietPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.pageTitleDiet)),
      body: const Center(child: Text('Welcome to the Diet Page!')),
    );
  }
}
