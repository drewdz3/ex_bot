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

import '../../features/auth/data/datasources/appauth_datasource.dart' as _i141;
import '../../features/auth/data/datasources/user_storage_datasource.dart'
    as _i636;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/data/services/auth_service.dart' as _i449;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/presentation/cubits/auth_cubit.dart' as _i521;
import '../../features/auth/presentation/pages/auth_page.dart' as _i495;
import '../../features/coach/data/repositories/azure_coach_repository.dart'
    as _i841;
import '../../features/coach/domain/repositories/coach_repository.dart'
    as _i1044;
import '../../features/coach/domain/usecases/send_message_to_coach.dart'
    as _i57;
import '../../main.dart' as _i822;
import '../network/azure_openai_client.dart' as _i9;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i141.AppAuthDataSource>(() => _i141.AppAuthDataSource());
    gh.factory<_i636.UserStorageDataSource>(
      () => _i636.UserStorageDataSource(),
    );
    gh.factory<_i495.AuthPage>(() => const _i495.AuthPage());
    gh.factory<_i822.MainApp>(() => const _i822.MainApp());
    gh.singleton<_i9.AzureOpenAiClient>(() => _i9.AzureOpenAiClient());
    gh.factory<_i1044.CoachRepository>(
      () => _i841.AzureCoachRepository(gh<_i9.AzureOpenAiClient>()),
    );
    gh.factory<_i57.SendMessageToCoach>(
      () => _i57.SendMessageToCoach(gh<_i1044.CoachRepository>()),
    );
    gh.factory<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        gh<_i141.AppAuthDataSource>(),
        gh<_i636.UserStorageDataSource>(),
      ),
    );
    gh.factory<_i449.AuthService>(
      () => _i449.AuthService(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i521.AuthCubit>(
      () => _i521.AuthCubit(gh<_i787.AuthRepository>()),
    );
    return this;
  }
}
