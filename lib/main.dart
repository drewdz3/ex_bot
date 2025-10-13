import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ex_bot/core/constants/environment_config.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/app/ex_bot_app.dart';

/// Main entry point for the ExBot application.
/// This file contains only the bootstrap logic needed to initialize
/// the app and load environment configuration.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Load environment variables
  try {
    await dotenv.load(fileName: ".env");
    DebugLogger.success('.env file loaded successfully');
  } catch (e) {
    DebugLogger.warning('Could not load .env file: $e');
  }
  
  // Print configuration status for debugging
  EnvironmentConfig.printConfigStatus();
  
  runApp(const ExBotApp());
}
