import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/domain/repositories/lookup_repository.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/welcome_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class WelcomeCubit extends Cubit<WelcomeState> {
  final LookupRepository _lookupRepository;
  final UserRepository _userRepository;

  WelcomeCubit(this._lookupRepository, this._userRepository) : super(const WelcomeState.initial());

  Future<void> initialize(String userId) async {
    //  prepare lookups
    await _lookupRepository.initialize();
    //  get user information
    var user = await _userRepository.getUser(userId);
    if (user == null) {
      //  handle this
      DebugLogger.error('User not found during WelcomeCubit initialization for userId: $userId');
      return;
    }
    //  get user preferences
    var preferences = await _userRepository.getPreferences(userId);
    emit(WelcomeState.ready(givenName: user.displayName ?? ''));
  }

  void startOnboarding() {
    // Could add analytics or other logic here in the future
  }

  void skipOnboarding() {
    // Could add analytics or other logic here in the future
  }
}
