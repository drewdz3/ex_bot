import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'temp_azure_config.dart';

/// Environment configuration for Azure OpenAI with fallback to temp config
class EnvironmentConfig {
  // Try .env file first, fall back to temp config
  static String get azureOpenaiApiKey {
    final envKey = dotenv.env['AZURE_OPENAI_API_KEY'];
    if (envKey != null && envKey.isNotEmpty) {
      return envKey;
    }
    return TempAzureConfig.apiKey;
  }
  
  static String get azureOpenaiEndpoint {
    final envEndpoint = dotenv.env['AZURE_OPENAI_ENDPOINT'];
    if (envEndpoint != null && envEndpoint.isNotEmpty) {
      return envEndpoint;
    }
    return TempAzureConfig.endpoint;
  }
  
  static String get azureOpenaiDeploymentName {
    final envDeployment = dotenv.env['AZURE_OPENAI_DEPLOYMENT_NAME'];
    if (envDeployment != null && envDeployment.isNotEmpty) {
      return envDeployment;
    }
    return TempAzureConfig.deploymentName;
  }
  
  static String get azureOpenaiApiVersion {
    final envVersion = dotenv.env['AZURE_OPENAI_API_VERSION'];
    if (envVersion != null && envVersion.isNotEmpty) {
      return envVersion;
    }
    return TempAzureConfig.apiVersion;
  }
  
  /// URL for chat completions endpoint
  static String get chatCompletionsUrl {
    // If the endpoint already contains the full path, use it as-is
    if (azureOpenaiEndpoint.contains('/chat/completions')) {
      return azureOpenaiEndpoint;
    }
    // Otherwise, construct the full URL
    return '$azureOpenaiEndpoint/openai/deployments/$azureOpenaiDeploymentName/chat/completions?api-version=$azureOpenaiApiVersion';
  }
  
  /// Check if the configuration is valid
  static bool get isConfigured {
    return azureOpenaiApiKey.isNotEmpty && 
           azureOpenaiEndpoint.isNotEmpty && 
           azureOpenaiDeploymentName.isNotEmpty;
  }
  
  /// Configuration summary for debugging
  static Map<String, String> get configSummary => {
    'apiKeyConfigured': azureOpenaiApiKey.isNotEmpty ? 'Yes (${azureOpenaiApiKey.length} chars)' : 'No',
    'endpoint': azureOpenaiEndpoint.isEmpty ? 'Not configured' : azureOpenaiEndpoint,
    'deploymentName': azureOpenaiDeploymentName.isEmpty ? 'Not configured' : azureOpenaiDeploymentName,
    'apiVersion': azureOpenaiApiVersion,
    'isConfigured': isConfigured.toString(),
  };
  
  /// Debug method to print configuration status
  static void printConfigStatus() {
    // ignore: avoid_print
    assert(() {
      print('=== Azure OpenAI Configuration Status ===');
      configSummary.forEach((key, value) {
        print('$key: $value');
      });
      print('=====================================');
      return true;
    }());
  }
}