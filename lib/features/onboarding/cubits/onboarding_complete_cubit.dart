import 'package:ex_bot/app/routing/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/models/user_preferences.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/onboarding_complete_state.dart';

@injectable
class OnboardingCompleteCubit extends Cubit<OnboardingCompleteState> {
  final UserRepository _userRepository;
  late UserPreferences _preferences;

  OnboardingCompleteCubit(this._userRepository) : super(const OnboardingCompleteState.initial());

  Future<void> initialize() async {
    try {
      _preferences = await _userRepository.getPreferences(null);
      emit(OnboardingCompleteState.loaded());
    } catch (e) {
      DebugLogger.error('(OnboardingCompleteCubit) Initialization failed: $e');
      emit(OnboardingCompleteState.error(e.toString()));
    }
  }

  Future<void> completeOnboarding() async {
    try {
      _preferences = _preferences.copyWith(onboardingCompleted: true, onboardingPath: null);
      await _userRepository.updatePreferences(_preferences);
      emit(OnboardingCompleteState.completed(path: RouteConstants.training));
    } catch (e) {
      DebugLogger.error('(OnboardingCompleteCubit.completeOnboarding) Failed to complete onboarding: $e');
      emit(OnboardingCompleteState.error(AppConstants.unknownError));
    }
  }
}
