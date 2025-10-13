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

import '../../features/ai_coach/data/repositories/azure_ai_coach_repository.dart'
    as _i153;
import '../../features/ai_coach/domain/repositories/ai_coach_repository.dart'
    as _i605;
import '../../features/ai_coach/domain/usecases/send_message_to_coach.dart'
    as _i889;
import '../../features/auth/data/datasources/msal_auth_datasource.dart'
    as _i183;
import '../network/azure_openai_client.dart' as _i9;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i183.MsalAuthDataSource>(() => _i183.MsalAuthDataSource());
    gh.singleton<_i9.AzureOpenAiClient>(() => _i9.AzureOpenAiClient());
    gh.factory<_i605.AiCoachRepository>(
      () => _i153.AzureAiCoachRepository(gh<_i9.AzureOpenAiClient>()),
    );
    gh.factory<_i889.SendMessageToCoach>(
      () => _i889.SendMessageToCoach(gh<_i605.AiCoachRepository>()),
    );
    return this;
  }
}
