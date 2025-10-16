import 'package:flutter/material.dart';
import 'package:ex_bot/core/network/azure_openai_client.dart';
import 'package:ex_bot/domain/repositories/azure_coach_repository.dart';
import 'package:ex_bot/core/constants/environment_config.dart';

/// Test page for AI Coach functionality
/// This is a development/testing page for validating Azure OpenAI integration
class AIChatTestPage extends StatefulWidget {
  const AIChatTestPage({super.key});

  @override
  State<AIChatTestPage> createState() => _AIChatTestPageState();
}

class _AIChatTestPageState extends State<AIChatTestPage> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];
  bool _isLoading = false;
  late final AzureCoachRepository _aiCoachRepository;

  @override
  void initState() {
    super.initState();
    _aiCoachRepository = AzureCoachRepository(AzureOpenAiClient());
    
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