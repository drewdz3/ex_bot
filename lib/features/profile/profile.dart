import 'package:flutter/material.dart';

import 'package:ex_bot/l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.pageTitleProfile)),
      body: const Center(child: Text('Welcome to the Profile Page!')),
    );
  }
}
