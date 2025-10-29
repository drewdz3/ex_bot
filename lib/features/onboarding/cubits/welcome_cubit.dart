import 'package:ex_bot/domain/repositories/lookup_repository.dart';
import 'package:ex_bot/features/onboarding/cubits/welcome_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class WelcomeCubit extends Cubit<WelcomeState> {
  final LookupRepository _lookupRepository;

  WelcomeCubit(this._lookupRepository) : super(const WelcomeState.initial());

  Future<void> initialize(String givenName) async {
    await _lookupRepository.initialize();
    emit(WelcomeState.ready(givenName: givenName));
  }

  void startOnboarding() {
    // Could add analytics or other logic here in the future
  }

  void skipOnboarding() {
    // Could add analytics or other logic here in the future
  }
}
