import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_state.freezed.dart';

@freezed
class WelcomeState with _$WelcomeState {
  const factory WelcomeState.initial() = WelcomeStateInitial;
  const factory WelcomeState.ready({required String givenName}) = WelcomeStateReady;
  const factory WelcomeState.next({required String path}) = WelcomeStateNext;
  const factory WelcomeState.complete() = WelcomeStateComplete;
}
