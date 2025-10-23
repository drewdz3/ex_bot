// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/datasources/appauth_datasource.dart' as _i190;
import '../../data/datasources/auth_storage_datasource.dart' as _i477;
import '../../data/datasources/user_storage_datasource.dart' as _i577;
import '../../domain/repositories/auth_repository_impl.dart' as _i1005;
import '../../domain/repositories/azure_coach_repository.dart' as _i384;
import '../../domain/usecases/send_message_to_coach.dart' as _i856;
import '../../features/auth/pages/landing_page.dart' as _i471;
import '../../features/landing/cubits/landing_cubit.dart' as _i1066;
import '../../features/landing/pages/landing_page.dart' as _i258;
import '../../features/onboarding/cubits/dietary_preferences_cubit.dart'
    as _i1018;
import '../../features/onboarding/cubits/health_limitations_cubit.dart' as _i68;
import '../../features/onboarding/cubits/onboarding_cubit.dart' as _i810;
import '../../features/onboarding/cubits/workout_preferences_cubit.dart'
    as _i673;
import '../../features/onboarding/cubits/workout_schedule_cubit.dart' as _i722;
import '../../main.dart' as _i822;
import '../network/azure_openai_client.dart' as _i9;
import '../repositories/auth_repository.dart' as _i1002;
import '../repositories/coach_repository.dart' as _i1070;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i190.AppAuthDataSource>(() => _i190.AppAuthDataSource());
    gh.factory<_i577.UserStorageDataSource>(
      () => _i577.UserStorageDataSource(),
    );
    gh.factory<_i822.MainApp>(() => const _i822.MainApp());
    gh.factory<_i471.LandingPage>(() => const _i471.LandingPage());
    gh.factory<_i258.LandingPage>(() => const _i258.LandingPage());
    gh.factory<_i477.AuthStorageDatasource>(
      () => _i477.AuthStorageDatasource(),
    );
    gh.factory<_i673.WorkoutPreferencesCubit>(
      () => _i673.WorkoutPreferencesCubit(),
    );
    gh.factory<_i810.OnboardingCubit>(() => _i810.OnboardingCubit());
    gh.factory<_i68.HealthLimitationsCubit>(
      () => _i68.HealthLimitationsCubit(),
    );
    gh.factory<_i1018.DietaryPreferencesCubit>(
      () => _i1018.DietaryPreferencesCubit(),
    );
    gh.factory<_i722.WorkoutScheduleCubit>(() => _i722.WorkoutScheduleCubit());
    gh.singleton<_i9.AzureOpenAiClient>(() => _i9.AzureOpenAiClient());
    gh.factory<_i1070.CoachRepository>(
      () => _i384.AzureCoachRepository(gh<_i9.AzureOpenAiClient>()),
    );
    gh.factory<_i856.SendMessageToCoach>(
      () => _i856.SendMessageToCoach(gh<_i1070.CoachRepository>()),
    );
    gh.singleton<_i1002.AuthRepository>(
      () => _i1005.AuthRepositoryImpl(
        gh<_i190.AppAuthDataSource>(),
        gh<_i577.UserStorageDataSource>(),
        gh<_i477.AuthStorageDatasource>(),
      ),
    );
    gh.factory<_i1066.LandingCubit>(
      () => _i1066.LandingCubit(gh<_i1002.AuthRepository>()),
    );
    return this;
  }
}
