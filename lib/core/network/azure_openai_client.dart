import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../constants/environment_config.dart';
import '../utils/debug_logger.dart';

/// HTTP client configured for Azure OpenAI Service
@singleton
class AzureOpenAiClient {
  late final Dio _dio;
  
  AzureOpenAiClient() {
    _dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 60),
        headers: {
          'Content-Type': 'application/json',
          'api-key': EnvironmentConfig.azureOpenaiApiKey,
        },
      ),
    );
    
    // Add request/response logging in debug mode
    _dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (obj) {
          // Only log in debug mode
          assert(() {
            DebugLogger.network(obj.toString());
            return true;
          }());
        },
      ),
    );
    
    // Add error handling interceptor
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          // Only log in debug mode
          assert(() {
            DebugLogger.error('Azure OpenAI Error: ${error.message}');
            if (error.response != null) {
              DebugLogger.error('Azure OpenAI Error Response: ${error.response?.data}');
            }
            return true;
          }());
          handler.next(error);
        },
      ),
    );
  }
  
  /// Get the configured Dio instance
  Dio get dio => _dio;
  
  /// Check if the client is properly configured
  bool get isConfigured => EnvironmentConfig.isConfigured;
  
  /// Get the chat completions endpoint URL
  String get chatCompletionsUrl => EnvironmentConfig.chatCompletionsUrl;
}