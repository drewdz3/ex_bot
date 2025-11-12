import 'package:flutter/material.dart';

import 'package:ex_bot/l10n/app_localizations.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.pageTitleTraining)),
      body: const Center(child: Text('Welcome to the Home Page!')),
    );
  }
}
