import 'package:ex_bot/features/ai_coach/domain/entities/ai_message_role.dart';
import 'package:flutter/material.dart';
import '../../core/di/injection.dart';
import '../../features/ai_coach/domain/usecases/send_message_to_coach.dart';
import '../../features/ai_coach/domain/entities/ai_message.dart';
import '../../core/errors/failures.dart';

/// Simple test page to verify Azure OpenAI integration
class AiTestPage extends StatefulWidget {
  const AiTestPage({super.key});

  @override
  State<AiTestPage> createState() => _AiTestPageState();
}

class _AiTestPageState extends State<AiTestPage> {
  final _messageController = TextEditingController();
  final _scrollController = ScrollController();
  final List<AiMessage> _messages = [];
  bool _isLoading = false;
  String? _error;

  late final SendMessageToCoach _sendMessageUseCase;

  @override
  void initState() {
    super.initState();
    _sendMessageUseCase = getIt<SendMessageToCoach>();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _sendMessage() async {
    final message = _messageController.text.trim();
    if (message.isEmpty) return;

    setState(() {
      _isLoading = true;
      _error = null;
    });

    // Add user message to chat
    final userMessage = AiMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      role: const AiMessageRole.user(),
      content: message,
      timestamp: DateTime.now(),
    );
    
    setState(() {
      _messages.add(userMessage);
    });
    
    _messageController.clear();

    // Send to AI coach
    final result = await _sendMessageUseCase.call(
      message: message,
      userId: 'test_user_123',
      userContext: {
        'goals': ['weight_loss', 'general_fitness'],
        'experience_level': 'beginner',
      },
    );

    setState(() {
      _isLoading = false;
    });

    result.fold(
      (failure) {
        setState(() {
          _error = _getFailureMessage(failure);
        });
      },
      (aiResponse) {
        setState(() {
          _messages.add(aiResponse);
        });
        _scrollToBottom();
      },
    );
  }

  String _getFailureMessage(Failure failure) {
    return failure.when(
      serverFailure: (message, statusCode) => 'Server Error: $message',
      networkFailure: (message) => 'Network Error: $message',
      cacheFailure: (message) => 'Cache Error: $message',
      validationFailure: (message, fieldErrors) => 'Validation Error: $message',
      aiServiceFailure: (message, errorCode) => 'AI Service Error: $message',
      unknownFailure: (message) => 'Unknown Error: $message',
    );
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Coach Test'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          // Error display
          if (_error != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.red.shade100,
              child: Text(
                _error!,
                style: TextStyle(color: Colors.red.shade800),
              ),
            ),
          
          // Chat messages
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final isUser = message.role == const AiMessageRole.user();
                
                return Align(
                  alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.all(12),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.8,
                    ),
                    decoration: BoxDecoration(
                      color: isUser 
                          ? Theme.of(context).primaryColor
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      message.content,
                      style: TextStyle(
                        color: isUser ? Colors.white : Colors.black87,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          
          // Loading indicator
          if (_isLoading)
            const Padding(
              padding: EdgeInsets.all(16),
              child: CircularProgressIndicator(),
            ),
          
          // Message input
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: const InputDecoration(
                      hintText: 'Ask your AI fitness coach...',
                      suffixIcon: Icon(Icons.fitness_center),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),
                FloatingActionButton.small(
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
}