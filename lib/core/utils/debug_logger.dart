    import 'package:flutter/foundation.dart';

    /// Debug utility for logging in development mode only.
    /// Provides different log levels and automatically filters out logs in release mode.
    class DebugLogger {
      static const String _prefix = '[ExBot]';

      /// Log general information (white text)
      static void info(String message) {
        if (!kReleaseMode) {
          debugPrint('$_prefix ℹ️  $message');
        }
      }

      /// Log success messages (green checkmark)
      static void success(String message) {
        if (!kReleaseMode) {
          debugPrint('$_prefix ✅ $message');
        }
      }

      /// Log warning messages (yellow warning)
      static void warning(String message) {
        if (!kReleaseMode) {
          debugPrint('$_prefix ⚠️  $message');
        }
      }

      /// Log error messages (red X)
      static void error(
        String message, [
        Object? error,
        StackTrace? stackTrace,
      ]) {
        if (!kReleaseMode) {
          debugPrint('$_prefix ❌ $message');
          if (error != null) {
            debugPrint('$_prefix    Error: $error');
          }
          if (stackTrace != null) {
            debugPrint('$_prefix    Stack trace: $stackTrace');
          }
        }
      }

      /// Log debug messages (blue info)
      static void debug(String message) {
        if (!kReleaseMode) {
          debugPrint('$_prefix 🔍 $message');
        }
      }

      /// Log network/API related messages (purple network)
      static void network(String message) {
        if (!kReleaseMode) {
          debugPrint('$_prefix 🌐 $message');
        }
      }

      /// Log navigation related messages (blue arrow)
      static void navigation(String message) {
        if (!kReleaseMode) {
          debugPrint('$_prefix 🧭 $message');
        }
      }
    }
