import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:universal_platform/universal_platform.dart';

import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/di/injection.dart';
import 'package:ex_bot/app/routing/app_router.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/l10n/app_localizations.dart';
import 'package:ex_bot/shared/services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DebugLogger.debug('(.main) Loading environment configuration...');
  var device = AppConstants.emptyString;
  try {
    if (UniversalPlatform.isAndroid) {
      device = 'android';
    } else if (UniversalPlatform.isIOS) {
      device = 'apple';
    } else {
      device = 'default';
    }
    device = '.$device.env';
    await dotenv.load(fileName: device);
  } catch (e) {
    DebugLogger.warning(
      '(.main) Could not load .env file for device: $device\r\n$e',
    );
  }

  DebugLogger.debug('(.main) Setting up IoC...');
  configureDependencies(Environment.prod);

  //  initialize auth service
  final authService = getIt<AuthService>();
  await authService.initializeOnStartup();

  DebugLogger.debug('(.main) Bootstrapping...');
  runApp(getIt.get<MainApp>());
}

@injectable
class MainApp extends StatelessWidget {
  const MainApp() : super(key: AppConstants.mainAppKey);

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
        Locale('en'),
      ],
      routerConfig: appRouter,
    );
  }
}
