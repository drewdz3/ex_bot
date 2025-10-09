import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../auth/data/datasources/msal_auth_datasource.dart';

/// Login page with Microsoft Account authentication
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final MsalAuthDataSource _authDataSource = MsalAuthDataSource();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Spacer(),
              
              // App logo/icon
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.fitness_center,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              
              const SizedBox(height: 32),
              
              // App name
              Text(
                'ExBot',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              
              const SizedBox(height: 8),
              
              Text(
                'Your AI Fitness Coach',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.grey[600],
                ),
              ),
              
              const SizedBox(height: 48),
              
              // Features preview
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      _FeaturePreview(
                        icon: Icons.psychology,
                        text: 'Personalized AI coaching',
                      ),
                      const SizedBox(height: 12),
                      _FeaturePreview(
                        icon: Icons.track_changes,
                        text: 'Progress tracking',
                      ),
                      const SizedBox(height: 12),
                      _FeaturePreview(
                        icon: Icons.restaurant,
                        text: 'Nutrition guidance',
                      ),
                    ],
                  ),
                ),
              ),
              
              const Spacer(),
              
              // Sign in with Microsoft button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _isLoading ? null : _signInWithMicrosoft,
                  icon: _isLoading 
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : const Icon(Icons.login),
                  label: Text(
                    _isLoading ? 'Signing in...' : 'Sign in with Microsoft',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 16),
              
              // Continue as guest button
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: _isLoading ? null : _continueAsGuest,
                  child: const Text('Continue as Guest'),
                ),
              ),
              
              const SizedBox(height: 32),
              
              // Terms and privacy
              Text(
                'By continuing, you agree to our Terms of Service and Privacy Policy',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Future<void> _signInWithMicrosoft() async {
    setState(() {
      _isLoading = true;
    });
    
    try {
      final result = await _authDataSource.signInInteractive();
      
      if (result != null && mounted) {
        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Welcome back, ${result['firstName']}!'),
            backgroundColor: Colors.green,
          ),
        );
        
        // Navigate to welcome page with user info
        context.go('/welcome/${result['firstName']}');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Sign in failed: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
  
  void _continueAsGuest() {
    // Navigate directly to chat without authentication
    context.go('/chat');
  }
}

class _FeaturePreview extends StatelessWidget {
  const _FeaturePreview({
    required this.icon,
    required this.text,
  });
  
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Theme.of(context).primaryColor,
          size: 20,
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}