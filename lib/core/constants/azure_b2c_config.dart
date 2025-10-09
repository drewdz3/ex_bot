import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Azure AD B2C configuration
class AzureB2CConfig {
  // B2C Configuration
  static String get tenantName {
    final tenantName = dotenv.env['AZURE_B2C_TENANT_NAME'];
    if (tenantName != null && tenantName.isNotEmpty) {
      return tenantName;
    }
    return 'your_tenant_name_here';
  }
  
  static String get clientId {
    final clientId = dotenv.env['AZURE_B2C_CLIENT_ID'];
    if (clientId != null && clientId.isNotEmpty) {
      return clientId;
    }
    return 'your_client_id_here';
  }
  
  static String get policySignIn {
    final policy = dotenv.env['AZURE_B2C_POLICY_SIGNIN'];
    if (policy != null && policy.isNotEmpty) {
      return policy;
    }
    return 'B2C_1_signupsignin';
  }
  
  static String get policyEditProfile {
    final policy = dotenv.env['AZURE_B2C_POLICY_EDIT_PROFILE'];
    if (policy != null && policy.isNotEmpty) {
      return policy;
    }
    return 'B2C_1_profileedit';
  }
  
  static String get policyPasswordReset {
    final policy = dotenv.env['AZURE_B2C_POLICY_PASSWORD_RESET'];
    if (policy != null && policy.isNotEmpty) {
      return policy;
    }
    return 'B2C_1_passwordreset';
  }
  
  /// Get the authority URL for sign-in
  static String get authoritySignIn => 
      'https://$tenantName.b2clogin.com/$tenantName.onmicrosoft.com/$policySignIn';
  
  /// Get the authority URL for profile editing
  static String get authorityEditProfile => 
      'https://$tenantName.b2clogin.com/$tenantName.onmicrosoft.com/$policyEditProfile';
  
  /// Get the authority URL for password reset
  static String get authorityPasswordReset => 
      'https://$tenantName.b2clogin.com/$tenantName.onmicrosoft.com/$policyPasswordReset';
  
  /// Get redirect URI
  static String get redirectUri => 'msal$clientId://auth';
  
  /// Default scopes for authentication
  static List<String> get scopes => [
    'https://$tenantName.onmicrosoft.com/$clientId/user_impersonation',
    'openid',
    'profile',
    'email',
  ];
  
  /// Check if B2C is properly configured
  static bool get isConfigured {
    return tenantName != 'your_tenant_name_here' &&
           clientId != 'your_client_id_here' &&
           tenantName.isNotEmpty &&
           clientId.isNotEmpty;
  }
  
  /// Configuration summary for debugging
  static Map<String, String> get configSummary => {
    'tenantName': tenantName,
    'clientId': clientId.isNotEmpty ? 'Configured (${clientId.length} chars)' : 'Not configured',
    'authoritySignIn': authoritySignIn,
    'redirectUri': redirectUri,
    'isConfigured': isConfigured.toString(),
  };
  
  /// Debug method to print configuration status
  static void printConfigStatus() {
    // ignore: avoid_print
    assert(() {
      print('=== Azure AD B2C Configuration Status ===');
      configSummary.forEach((key, value) {
        print('$key: $value');
      });
      print('==========================================');
      return true;
    }());
  }
}