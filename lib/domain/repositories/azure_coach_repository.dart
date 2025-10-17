    import 'package:dio/dio.dart';
    import 'package:either_dart/either.dart';
    import 'package:ex_bot/domain/entities/ai_conversation.dart';
    import 'package:ex_bot/domain/entities/ai_message_role.dart';
    import 'package:injectable/injectable.dart';
    import '../entities/ai_message.dart';
    import '../../core/repositories/coach_repository.dart';
    import '../../core/errors/failures.dart';
    import '../../core/network/azure_openai_client.dart';
    import '../../core/constants/app_constants.dart';
    import '../../core/utils/debug_logger.dart';

    /// Implementation of AI coach repository using Azure OpenAI Service
    @Injectable(as: CoachRepository)
    class AzureCoachRepository implements CoachRepository {
      final AzureOpenAiClient _client;

      AzureCoachRepository(this._client);

      @override
      Future<Either<Failure, AiMessage>> sendMessage({
        required String message,
        required String userId,
        String? conversationId,
        Map<String, dynamic>? context,
      }) async {
        try {
          if (!_client.isConfigured) {
            return Left(
              Failure.aiServiceFailure(
                message: 'Azure OpenAI client is not properly configured',
                errorCode: 'CONFIG_ERROR',
              ),
            );
          }

          // Build the request manually with correct parameter names for Azure OpenAI
          final requestData = {
            'model': ApiConstants.defaultDeployment,
            'messages': [
              // System prompt for fitness coaching
              {'role': 'system', 'content': _buildSystemPrompt(context)},
              // User message
              {'role': 'user', 'content': message},
            ],
            'temperature': ApiConstants.temperature,
            'max_tokens': ApiConstants.maxTokens,
            'top_p': 1.0,
            'frequency_penalty': 0.0,
            'presence_penalty': 0.0,
            'user': userId,
          };

          // Send request to Azure OpenAI
          final response = await _client.dio.post(
            _client.chatCompletionsUrl,
            data: requestData,
          );

          // Debug: Print the actual response structure
          assert(() {
            DebugLogger.network('=== Azure OpenAI Response ===');
            DebugLogger.network('Status: ${response.statusCode}');
            DebugLogger.network('Data: ${response.data}');
            DebugLogger.network('============================');
            return true;
          }());

          // Parse response manually to handle Azure OpenAI format
          final responseData = response.data as Map<String, dynamic>;

          // Check if we have choices
          final choices = responseData['choices'] as List<dynamic>?;
          if (choices == null || choices.isEmpty) {
            return Left(
              Failure.aiServiceFailure(
                message: 'No response choices from AI service',
                errorCode: 'EMPTY_RESPONSE',
              ),
            );
          }

          // Extract the message content from the first choice
          final firstChoice = choices.first as Map<String, dynamic>;
          final responseMessage =
              firstChoice['message'] as Map<String, dynamic>?;
          if (responseMessage == null) {
            return Left(
              Failure.aiServiceFailure(
                message: 'No message in AI service response',
                errorCode: 'INVALID_RESPONSE',
              ),
            );
          }

          final content = responseMessage['content'] as String?;
          if (content == null || content.isEmpty) {
            return Left(
              Failure.aiServiceFailure(
                message: 'Empty content in AI service response',
                errorCode: 'EMPTY_CONTENT',
              ),
            );
          }

          // Create AI message from response
          final responseId = responseData['id'] as String? ?? 'unknown';
          final responseModel = responseData['model'] as String? ?? 'unknown';

          final aiMessage = AiMessage(
            id: responseId,
            role: const AiMessageRole.assistant(),
            content: content,
            timestamp: DateTime.now(),
            metadata: {
              'model': responseModel,
              'conversationId': conversationId,
              'usage': responseData['usage'] ?? {},
            },
          );

          return Right(aiMessage);
        } on DioException catch (e) {
          return Left(_handleDioError(e));
        } catch (e) {
          return Left(
            Failure.unknownFailure(
              message: 'Unexpected error: ${e.toString()}',
            ),
          );
        }
      }

      @override
      Future<Either<Failure, AiConversation>> getConversation({
        required String conversationId,
      }) async {
        // For now, return a simple implementation
        // In a full app, this would fetch from local storage/database
        return Left(
          Failure.unknownFailure(
            message: 'Conversation retrieval not yet implemented',
          ),
        );
      }

      @override
      Future<Either<Failure, AiConversation>> createConversation({
        required String userId,
        String? initialContext,
      }) async {
        final conversation = AiConversation(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          messages: [],
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          context: initialContext ?? 'fitness_coaching',
          metadata: {'userId': userId},
        );

        return Right(conversation);
      }

      @override
      Future<Either<Failure, AiConversation>> updateConversation({
        required String conversationId,
        required AiMessage message,
      }) async {
        // For now, return a simple implementation
        // In a full app, this would update local storage/database
        return Left(
          Failure.unknownFailure(
            message: 'Conversation update not yet implemented',
          ),
        );
      }

      @override
      Future<Either<Failure, String>> generateCoachingPrompt({
        required Map<String, dynamic> userProfile,
        required String interactionType,
      }) async {
        final prompt = _buildCoachingPrompt(userProfile, interactionType);
        return Right(prompt);
      }

      /// Build system prompt for fitness coaching
      String _buildSystemPrompt(Map<String, dynamic>? context) {
        return '''
You are ExBot, an expert AI fitness coach with deep knowledge in exercise science, nutrition, and behavioral psychology. Your role is to provide personalized, evidence-based guidance to help users achieve their health and fitness goals.

Key coaching principles:
- Always prioritize user safety and well-being
- Provide personalized advice based on user's goals, limitations, and preferences
- Use motivational and encouraging language
- Ask clarifying questions when needed
- Suggest progressive, sustainable changes
- Consider both physical and mental aspects of fitness

Context: ${context?.toString() ?? 'General fitness coaching'}

Remember to be conversational, supportive, and adaptive to the user's needs and responses.
''';
      }

      /// Build specific coaching prompts based on interaction type
      String _buildCoachingPrompt(
        Map<String, dynamic> userProfile,
        String interactionType,
      ) {
        switch (interactionType) {
          case 'daily_checkin':
            return 'Ask about their workout completion, energy levels, and any challenges they faced today.';
          case 'workout_planning':
            return 'Help them plan their next workout based on their goals, available time, and equipment.';
          case 'nutrition_guidance':
            return 'Provide nutritional advice aligned with their fitness goals and dietary preferences.';
          case 'motivation':
            return 'Provide encouraging words and motivation to help them stay on track with their fitness journey.';
          default:
            return 'Provide general fitness coaching guidance and support.';
        }
      }

      /// Handle Dio errors and convert to appropriate Failures
      Failure _handleDioError(DioException error) {
        switch (error.type) {
          case DioExceptionType.connectionTimeout:
          case DioExceptionType.sendTimeout:
          case DioExceptionType.receiveTimeout:
            return Failure.networkFailure(
              message:
                  'Request timeout. Please check your internet connection.',
            );
          case DioExceptionType.badResponse:
            final statusCode = error.response?.statusCode;
            final message =
                error.response?.data?['error']?['message'] ??
                'Server error occurred';
            return Failure.serverFailure(
              message: message,
              statusCode: statusCode,
            );
          case DioExceptionType.connectionError:
            return Failure.networkFailure(
              message:
                  'Connection error. Please check your internet connection.',
            );
          default:
            return Failure.aiServiceFailure(
              message: 'AI service error: ${error.message}',
              errorCode: error.type.toString(),
            );
        }
      }
    }
