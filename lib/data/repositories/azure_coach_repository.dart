import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/core/network/azure_openai_client.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/domain/repositories/coach_repository.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/coach_models/conversation.dart';
import 'package:ex_bot/data/coach_models/message.dart';
import 'package:ex_bot/data/coach_models/message_role.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CoachRepository)
class AzureCoachRepository implements CoachRepository {
  static const String agePlaceholder = '[[age]]';
  static const String namePlaceholder = '[[name]]';
  static const String fitnessLevelPlaceholder = '[[fitnessLevel]]';
  static const String heightPlaceholder = '[[height]]';
  static const String weightPlaceholder = '[[weight]]';
  static const String genderPlaceholder = '[[gender]]';
  static const String goalsPlaceholder = '[[goals]]';
  static const String workoutTypesPlaceholder = '[[workoutTypes]]';
  static const String equipmentPlaceholder = '[[equipment]]';
  static const String workoutFrequencyPlaceholder = '[[workoutFrequency]]';
  static const String workoutDurationPlaceholder = '[[workoutDuration]]';
  static const String knownInjuriesPlaceholder = '[[knownInjuries]]';
  static const String conditionsPlaceholder = '[[conditions]]';
  static const String allergiesPlaceholder = '[[allergies]]';
  static const String preferredDietPlaceholder = '[[preferredDiet]]';
  static const String historyPlaceholder = '[[history]]';

  final AzureOpenAiClient _client;
  final UserRepository _userRepository;
  late String _promptText;
  late String _unspecifiedText;
  late String _noneText;

  AzureCoachRepository(this._client, this._userRepository);

  @override
  Future<void> initialize(String promptText, String unspecifiedText, String noneText) async {
    _promptText = promptText;
    _unspecifiedText = unspecifiedText;
    _noneText = noneText;
  }

  @override
  Future<Either<Failure, Message>> sendMessage({
    required String message,
    required String userId,
    required String displayName,
    String? conversationId,
    Map<String, dynamic>? context,
  }) async {
    try {
      if (!_client.isConfigured) {
        return Left(
          Failure.aiServiceFailure(message: AppConstants.agentNotInitializedError, errorCode: 'CONFIG_ERROR'),
        );
      }

      var preferences = await _userRepository.getPreferences(null);

      // Build the request manually with correct parameter names for Azure OpenAI
      final requestData = {
        'model': ApiConstants.defaultDeployment,
        'messages': [
          // System prompt for fitness coaching
          {'role': 'system', 'content': _buildSystemPrompt(context, displayName, preferences)},
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
      final response = await _client.dio.post(_client.chatCompletionsUrl, data: requestData);

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
          Failure.aiServiceFailure(message: 'No response choices from AI service', errorCode: 'EMPTY_RESPONSE'),
        );
      }

      // Extract the message content from the first choice
      final firstChoice = choices.first as Map<String, dynamic>;
      final responseMessage = firstChoice['message'] as Map<String, dynamic>?;
      if (responseMessage == null) {
        return Left(
          Failure.aiServiceFailure(message: 'No message in AI service response', errorCode: 'INVALID_RESPONSE'),
        );
      }

      final content = responseMessage['content'] as String?;
      if (content == null || content.isEmpty) {
        return Left(
          Failure.aiServiceFailure(message: 'Empty content in AI service response', errorCode: 'EMPTY_CONTENT'),
        );
      }

      // Create AI message from response
      final responseId = responseData['id'] as String? ?? 'unknown';
      final responseModel = responseData['model'] as String? ?? 'unknown';

      final aiMessage = Message(
        id: responseId,
        role: const MessageRole.assistant(),
        content: content,
        timestamp: DateTime.now(),
        metadata: {'model': responseModel, 'conversationId': conversationId, 'usage': responseData['usage'] ?? {}},
      );

      return Right(aiMessage);
    } on DioException catch (e) {
      return Left(_handleDioError(e));
    } catch (e) {
      return Left(Failure.unknownFailure(message: AppConstants.unknownError));
    }
  }

  @override
  Future<Either<Failure, Conversation>> getConversation({required String conversationId}) async {
    // For now, return a simple implementation
    // In a full app, this would fetch from local storage/database
    return Left(Failure.unknownFailure(message: 'Conversation retrieval not yet implemented'));
  }

  @override
  Future<Either<Failure, Conversation>> createConversation({required String userId, String? initialContext}) async {
    final conversation = Conversation(
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
  Future<Either<Failure, Conversation>> updateConversation({
    required String conversationId,
    required Message message,
  }) async {
    // For now, return a simple implementation
    // In a full app, this would update local storage/database
    return Left(Failure.unknownFailure(message: AppConstants.unknownError));
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
  String _buildSystemPrompt(Map<String, dynamic>? context, String displayName, UserPreferences preferences) {
    String goals = preferences.fitnessGoals.isNotEmpty ? preferences.fitnessGoals.join(', ') : _unspecifiedText;
    String workoutTypes = preferences.preferredWorkoutTypes.isNotEmpty
        ? preferences.preferredWorkoutTypes.join(', ')
        : _unspecifiedText;
    String equipment = preferences.availableEquipment.isNotEmpty ? preferences.availableEquipment.join(', ') : '';
    String workoutFrequency = preferences.workoutsPerWeek != null ? '${preferences.workoutsPerWeek}' : _unspecifiedText;
    String workoutDuration = preferences.workoutDurationMinutes != null
        ? '${preferences.workoutDurationMinutes}'
        : _unspecifiedText;
    String knownInjuries = preferences.injuries.isNotEmpty ? preferences.injuries.join(', ') : _noneText;
    String conditions = preferences.medicalConditions.isNotEmpty ? preferences.medicalConditions.join(', ') : _noneText;
    String allergies = preferences.allergies.isNotEmpty ? preferences.allergies.join(', ') : _noneText;
    String preferredDiet = preferences.dietaryRestrictions.isNotEmpty
        ? preferences.dietaryRestrictions.join(', ')
        : _noneText;

    return _promptText
        .replaceAll(namePlaceholder, displayName)
        .replaceAll(agePlaceholder, preferences.age?.toString() ?? _unspecifiedText)
        .replaceAll(fitnessLevelPlaceholder, preferences.fitnessLevel ?? _unspecifiedText)
        .replaceAll(heightPlaceholder, preferences.height?.toString() ?? _unspecifiedText)
        .replaceAll(weightPlaceholder, preferences.weight?.toString() ?? _unspecifiedText)
        .replaceAll(genderPlaceholder, preferences.gender ?? _unspecifiedText)
        .replaceAll(goalsPlaceholder, goals)
        .replaceAll(workoutTypesPlaceholder, workoutTypes)
        .replaceAll(equipmentPlaceholder, equipment)
        .replaceAll(workoutFrequencyPlaceholder, workoutFrequency)
        .replaceAll(workoutDurationPlaceholder, workoutDuration)
        .replaceAll(knownInjuriesPlaceholder, knownInjuries)
        .replaceAll(conditionsPlaceholder, conditions)
        .replaceAll(allergiesPlaceholder, allergies)
        .replaceAll(preferredDietPlaceholder, preferredDiet);
  }

  /// Build specific coaching prompts based on interaction type
  String _buildCoachingPrompt(Map<String, dynamic> userProfile, String interactionType) {
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
        return Failure.networkFailure(message: AppConstants.networkError);
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        return Failure.serverFailure(message: AppConstants.unknownError, statusCode: statusCode);
      case DioExceptionType.connectionError:
        return Failure.networkFailure(message: 'Connection error. Please check your internet connection.');
      default:
        return Failure.aiServiceFailure(message: AppConstants.unknownError, errorCode: error.type.toString());
    }
  }
}
