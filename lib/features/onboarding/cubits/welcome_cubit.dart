import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'welcome_cubit.freezed.dart';

@freezed
class WelcomeState with _$WelcomeState {
  const factory WelcomeState.initial() = _Initial;
  const factory WelcomeState.ready({required String givenName}) = _Ready;
}

@injectable
class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(const WelcomeState.initial());

  void initialize(String givenName) {
    emit(WelcomeState.ready(givenName: givenName));
  }

  void startOnboarding() {
    // Could add analytics or other logic here in the future
  }

  void skipOnboarding() {
    // Could add analytics or other logic here in the future
  }
}
