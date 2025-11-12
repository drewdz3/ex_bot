import 'package:ex_bot/domain/repositories/coach_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/core/use_case.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/models/app_user.dart';
import 'package:ex_bot/data/models/auth_status.dart';
import 'package:ex_bot/domain/usecases/authenticate_silent_usecase.dart';
import 'package:ex_bot/domain/usecases/authenticate_usecase.dart';

/// Cubit for managing authentication state
@injectable
class LandingCubit extends Cubit<AuthStatus> {
  final AuthenticateSilentUseCase _authSilentUsecase;
  final AuthenticateUseCase _authUsecase;
  final CoachRepository _coachRepository;

  LandingCubit(this._authSilentUsecase, this._authUsecase, this._coachRepository) : super(const AuthStatus.loading());

  Future<void> initialize(String promptText, String unspecifiedText, String noneText) async {
    try {
      await _coachRepository.initialize(promptText, unspecifiedText, noneText);

      DebugLogger.info('(LandingCubit.initializeAuth) Initializing...');
      emit(const AuthStatus.loading());

      var result = await _authSilentUsecase.executeAsync(params: NoParams());
      result.fold(
        (failure) {
          DebugLogger.error('(LandingCubit.initializeAuth) Initialization failed: ${failure.message}');
          emit(AuthStatus.unauthenticated());
        },
        (user) {
          DebugLogger.success('(LandingCubit.initializeAuth) Initialization successful');
          emit(AuthStatus.authenticated(user));
        },
      );
    } catch (e) {
      DebugLogger.error('(LandingCubit.initializeAuth) Auth initialization failed: $e');
      emit(AuthStatus.error('Initialization failed: ${e.toString()}'));
    }
  }

  Future<void> signIn() async {
    try {
      DebugLogger.info('(LandingCubit.signIn) Starting sign-in...');
      emit(const AuthStatus.loading());

      final result = await _authUsecase.executeAsync(params: NoParams());
      result.fold(
        (failure) {
          DebugLogger.error('(LandingCubit.signIn) Sign-in failed: ${failure.message}');
          emit(AuthStatus.error(failure.message));
        },
        (user) {
          DebugLogger.success('(LandingCubit.signIn) Sign-in successful');
          emit(AuthStatus.authenticated(user));
        },
      );
    } catch (e) {
      DebugLogger.error('(LandingCubit.signIn) Sign-in error: $e');
      emit(AuthStatus.error('Sign-in failed: ${e.toString()}'));
    }
  }

  /// Sign out current user
  Future<void> signOut() async {
    // try {
    //   DebugLogger.info('(LandingCubit.signOut) Starting sign-out...');
    //   emit(const AuthStatus.loading());

    //   final result = await _authSignout.executeAsync(params: NoParams());
    //   result.fold(
    //     (failure) {
    //       DebugLogger.error('(LandingCubit.signOut) Sign-out failed: ${failure.message}');
    //       emit(AuthStatus.error(failure.message));
    //     },
    //     (_) {
    //       DebugLogger.success('(LandingCubit.signOut) Sign-out successful');
    //       emit(const AuthStatus.unauthenticated());
    //     },
    //   );
    // } catch (e) {
    //   DebugLogger.error('(LandingCubit.signOut) Sign-out error: $e');
    //   emit(AuthStatus.error('Sign-out failed: ${e.toString()}'));
    // }
  }

  /// Check if user is currently authenticated
  bool get isAuthenticated {
    return (state is Authenticated) ? true : false;
  }

  /// Get current authenticated user
  AppUser? get currentUser {
    return (state is Authenticated) ? (state as Authenticated).user : null;
  }

  /// Check if auth is in loading state
  bool get isLoading {
    return (state is Loading) ? true : false;
  }

  /// Check if there's an error
  String? get errorMessage {
    return (state is AuthError) ? (state as AuthError).message : null;
  }
}
