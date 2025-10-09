// TODO: Complete MSAL implementation after Azure B2C setup
// import 'dart:convert';
// import 'package:msal_auth/msal_auth.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/azure_b2c_config.dart';

/// MSAL authentication datasource for Azure AD B2C
/// TODO: Implement with correct MSAL API after Azure B2C tenant is configured
@injectable
class MsalAuthDataSource {
  MsalAuthDataSource();
  
  /// Mock authentication for UI development
  /// Replace with actual MSAL implementation once Azure B2C is configured
  Future<Map<String, dynamic>?> signInInteractive() async {
    // Mock successful authentication
    await Future.delayed(const Duration(seconds: 2));
    
    // ignore: avoid_print
    print('🔐 Mock authentication successful');
    
    return {
      'userId': 'mock_user_123',
      'email': 'john.doe@example.com',
      'firstName': 'John',
      'lastName': 'Doe',
      'displayName': 'John Doe',
    };
  }
  
  /// Mock silent sign-in
  Future<Map<String, dynamic>?> signInSilent() async {
    // Mock no cached user for now
    return null;
  }
  
  /// Mock sign out
  Future<void> signOut() async {
    await Future.delayed(const Duration(milliseconds: 500));
    // ignore: avoid_print
    print('🔓 Mock user signed out');
  }
  
  /// Mock check if signed in
  Future<bool> isSignedIn() async {
    return false; // Always return false for now
  }
  
  /// Print Azure B2C configuration status for debugging
  void printConfigStatus() {
    AzureB2CConfig.printConfigStatus();
  }
}