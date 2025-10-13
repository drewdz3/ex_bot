import 'package:ex_bot/core/network/azure_openai_client.dart';
import 'package:ex_bot/features/ai_coach/data/repositories/azure_ai_coach_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ex_bot/core/constants/environment_config.dart';
import 'package:ex_bot/core/routing/app_router.dart';
import 'package:ex_bot/l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Load environment variables
  try {
    await dotenv.load(fileName: ".env");
    // ignore: avoid_print
    print('✅ .env file loaded successfully');
  } catch (e) {
    // ignore: avoid_print
    print('⚠️  Could not load .env file: $e');
  }
  
  // Print configuration status for debugging
  EnvironmentConfig.printConfigStatus();
  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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

class AIChatTestPage extends StatefulWidget {
  const AIChatTestPage({super.key});

  @override
  State<AIChatTestPage> createState() => _AIChatTestPageState();
}

class _AIChatTestPageState extends State<AIChatTestPage> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];
  bool _isLoading = false;
  late final AzureAiCoachRepository _aiCoachRepository;

  @override
  void initState() {
    super.initState();
    _aiCoachRepository = AzureAiCoachRepository(AzureOpenAiClient());
    
    // Add initial status message
    _messages.add('🤖 ExBot AI Coach initialized!');
    _messages.add('Configuration status: ${EnvironmentConfig.isConfigured ? "✅ Connected to Azure OpenAI" : "❌ Not configured"}');
    if (EnvironmentConfig.isConfigured) {
      _messages.add('Endpoint: ${EnvironmentConfig.azureOpenaiEndpoint}');
      _messages.add('Ready to chat! Ask me about fitness, workouts, or nutrition.');
    }
  }

  Future<void> _sendMessage() async {
    if (_messageController.text.trim().isEmpty) return;
    
    final userMessage = _messageController.text.trim();
    setState(() {
      _messages.add('👤 You: $userMessage');
      _isLoading = true;
    });
    
    _messageController.clear();

    try {
      final result = await _aiCoachRepository.sendMessage(
        message: userMessage,
        userId: 'test_user_001',
      );
      
      result.fold(
        (failure) {
          setState(() {
            _messages.add('❌ Error: ${failure.message}');
            _isLoading = false;
          });
        },
        (response) {
          setState(() {
            _messages.add('🤖 ExBot: ${response.content}');
            _isLoading = false;
          });
        },
      );
    } catch (e) {
      setState(() {
        _messages.add('❌ Unexpected error: $e');
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ExBot - AI Coach Test'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    _messages[index],
                    style: const TextStyle(fontSize: 16),
                  ),
                );
              },
            ),
          ),
          if (_isLoading)
            const Padding(
              padding: EdgeInsets.all(8),
              child: CircularProgressIndicator(),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: const InputDecoration(
                      hintText: 'Ask your AI fitness coach...',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),
                FloatingActionButton(
                  onPressed: _isLoading ? null : _sendMessage,
                  child: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }
}
