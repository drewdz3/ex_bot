import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ex_bot/core/routing/app_router.dart';
import 'package:ex_bot/l10n/app_localizations.dart';

/// Main application widget that configures the app-level settings
/// including theme, localization, and routing.
class ExBotApp extends StatelessWidget {
  const ExBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ExBot - AI Fitness Coach',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
      ],
      routerConfig: appRouter,
    );
  }
}