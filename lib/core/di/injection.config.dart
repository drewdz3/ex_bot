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

import '../../data/data_mappers/app_user_mapper.dart' as _i62;
import '../../data/data_mappers/entity_mapper.dart' as _i69;
import '../../data/data_mappers/equipment_mapper.dart' as _i724;
import '../../data/data_mappers/fitness_goal_mapper.dart' as _i446;
import '../../data/data_mappers/fitness_level_mapper.dart' as _i872;
import '../../data/data_mappers/user_preferences_mapper.dart' as _i559;
import '../../data/data_mappers/workout_type_mapper.dart' as _i911;
import '../../data/datasources/appauth_datasource.dart' as _i190;
import '../../data/datasources/auth_storage_datasource.dart' as _i477;
import '../../data/datasources/database_datasource.dart' as _i1000;
import '../../data/datasources/lookup_seed_datasource.dart' as _i50;
import '../../data/datasources/realm_datasource.dart' as _i334;
import '../../data/models/app_user.dart' as _i103;
import '../../data/models/equipment.dart' as _i596;
import '../../data/models/fitness_goal.dart' as _i317;
import '../../data/models/fitness_level.dart' as _i805;
import '../../data/models/user_preferences.dart' as _i779;
import '../../data/models/workout_type.dart' as _i696;
import '../../data/realm_models/app_user_realm.dart' as _i991;
import '../../data/realm_models/equipment_realm.dart' as _i510;
import '../../data/realm_models/fitness_goal_realm.dart' as _i0;
import '../../data/realm_models/fitness_level_realm.dart' as _i878;
import '../../data/realm_models/user_preferences_realm.dart' as _i1049;
import '../../data/realm_models/workout_type_realm.dart' as _i554;
import '../../data/repositories/auth_repository_impl.dart' as _i895;
import '../../data/repositories/azure_coach_repository.dart' as _i1000;
import '../../data/repositories/lookup_data_repository.dart' as _i710;
import '../../data/repositories/user_repository_impl.dart' as _i790;
import '../../domain/repositories/auth_repository.dart' as _i1073;
import '../../domain/repositories/coach_repository.dart' as _i926;
import '../../domain/repositories/lookup_repository.dart' as _i383;
import '../../domain/repositories/user_repository.dart' as _i271;
import '../../domain/usecases/authenticate_signout_usecase.dart' as _i214;
import '../../domain/usecases/authenticate_silent_usecase.dart' as _i250;
import '../../domain/usecases/authenticate_usecase.dart' as _i1027;
import '../../domain/usecases/get_preferences_usecase.dart' as _i623;
import '../../domain/usecases/get_workout_types_usecase.dart' as _i226;
import '../../domain/usecases/send_message_to_coach.dart' as _i856;
import '../../domain/usecases/update_preferences_usecase.dart' as _i509;
import '../../features/landing/cubits/landing_cubit.dart' as _i1066;
import '../../features/landing/pages/landing_page.dart' as _i258;
import '../../features/onboarding/cubits/basic_info_cubit.dart' as _i666;
import '../../features/onboarding/cubits/dietary_preferences_cubit.dart'
    as _i1018;
import '../../features/onboarding/cubits/fitness_goals_cubit.dart' as _i1031;
import '../../features/onboarding/cubits/health_limitations_cubit.dart' as _i68;
import '../../features/onboarding/cubits/onboarding_complete_cubit.dart'
    as _i147;
import '../../features/onboarding/cubits/welcome_cubit.dart' as _i40;
import '../../features/onboarding/cubits/workout_preferences_cubit.dart'
    as _i673;
import '../../features/onboarding/cubits/workout_schedule_cubit.dart' as _i722;
import '../../main.dart' as _i822;
import '../network/azure_openai_client.dart' as _i9;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i190.AppAuthDataSource>(() => _i190.AppAuthDataSource());
    gh.factory<_i477.AuthStorageDatasource>(
      () => _i477.AuthStorageDatasource(),
    );
    gh.factory<_i258.LandingPage>(() => const _i258.LandingPage());
    gh.factory<_i1018.DietaryPreferencesCubit>(
      () => _i1018.DietaryPreferencesCubit(),
    );
    gh.factory<_i68.HealthLimitationsCubit>(
      () => _i68.HealthLimitationsCubit(),
    );
    gh.factory<_i147.OnboardingCompleteCubit>(
      () => _i147.OnboardingCompleteCubit(),
    );
    gh.factory<_i722.WorkoutScheduleCubit>(() => _i722.WorkoutScheduleCubit());
    gh.factory<_i822.MainApp>(() => const _i822.MainApp());
    gh.singleton<_i9.AzureOpenAiClient>(() => _i9.AzureOpenAiClient());
    gh.factory<_i69.DataMapper<_i696.WorkoutType, _i554.WorkoutTypeRealm>>(
      () => const _i911.WorkoutTypeMapper(),
    );
    gh.factory<_i69.DataMapper<_i805.FitnessLevel, _i878.FitnessLevelRealm>>(
      () => const _i872.FitnessLevelMapper(),
    );
    gh.factory<_i926.CoachRepository>(
      () => _i1000.AzureCoachRepository(gh<_i9.AzureOpenAiClient>()),
    );
    gh.singleton<_i1073.AuthRepository>(
      () => _i895.AuthRepositoryImpl(
        gh<_i190.AppAuthDataSource>(),
        gh<_i477.AuthStorageDatasource>(),
      ),
    );
    gh.factory<_i69.DataMapper<_i596.Equipment, _i510.EquipmentRealm>>(
      () => const _i724.EquipmentMapper(),
    );
    gh.factory<_i69.DataMapper<_i317.FitnessGoal, _i0.FitnessGoalRealm>>(
      () => const _i446.FitnessGoalMapper(),
    );
    gh.factory<_i856.SendMessageToCoach>(
      () => _i856.SendMessageToCoach(gh<_i926.CoachRepository>()),
    );
    gh.factory<_i69.DataMapper<_i103.AppUser, _i991.AppUserRealm>>(
      () => const _i62.AppUserMapper(),
    );
    gh.factory<
      _i69.DataMapper<_i779.UserPreferences, _i1049.UserPreferencesRealm>
    >(() => const _i559.UserPreferencesMapper());
    gh.singleton<_i1000.DatabaseDatasource>(() => _i334.RealmDatasource());
    gh.factory<_i50.LookupSeedDatasource>(
      () => _i50.LookupSeedDatasourceImpl(),
    );
    gh.factory<_i214.AuthenticateSignoutUseCase>(
      () => _i214.AuthenticateSignoutUseCaseImpl(gh<_i1073.AuthRepository>()),
    );
    gh.singleton<_i271.UserRepository>(
      () => _i790.UserRepositoryImpl(
        gh<_i1000.DatabaseDatasource>(),
        gh<_i69.DataMapper<_i103.AppUser, _i991.AppUserRealm>>(),
        gh<
          _i69.DataMapper<_i779.UserPreferences, _i1049.UserPreferencesRealm>
        >(),
      ),
    );
    gh.lazySingleton<_i383.LookupRepository>(
      () => _i710.LookupDataRepository(
        gh<_i1000.DatabaseDatasource>(),
        gh<_i50.LookupSeedDatasource>(),
        gh<_i69.DataMapper<_i317.FitnessGoal, _i0.FitnessGoalRealm>>(),
        gh<_i69.DataMapper<_i596.Equipment, _i510.EquipmentRealm>>(),
        gh<_i69.DataMapper<_i696.WorkoutType, _i554.WorkoutTypeRealm>>(),
        gh<_i69.DataMapper<_i805.FitnessLevel, _i878.FitnessLevelRealm>>(),
      ),
    );
    gh.factory<_i623.GetPreferencesUsecase>(
      () => _i623.GetPreferencesUsecaseImpl(gh<_i271.UserRepository>()),
    );
    gh.factory<_i1027.AuthenticateUseCase>(
      () => _i1027.AuthenticateUseCaseImpl(
        gh<_i1073.AuthRepository>(),
        gh<_i271.UserRepository>(),
      ),
    );
    gh.factory<_i1031.FitnessGoalsCubit>(
      () => _i1031.FitnessGoalsCubit(gh<_i383.LookupRepository>()),
    );
    gh.factory<_i673.WorkoutPreferencesCubit>(
      () => _i673.WorkoutPreferencesCubit(gh<_i383.LookupRepository>()),
    );
    gh.factory<_i509.UpdatePreferencesUseCase>(
      () => _i509.UpdatePreferencesUseCaseImpl(gh<_i271.UserRepository>()),
    );
    gh.factory<_i250.AuthenticateSilentUseCase>(
      () => _i250.AuthenticateSilentUseCaseImpl(
        gh<_i477.AuthStorageDatasource>(),
        gh<_i190.AppAuthDataSource>(),
        gh<_i271.UserRepository>(),
      ),
    );
    gh.factory<_i226.GetWorkoutTypesUsecase>(
      () => _i226.GetWorkoutTypesUsecaseImpl(gh<_i383.LookupRepository>()),
    );
    gh.factory<_i40.WelcomeCubit>(
      () => _i40.WelcomeCubit(
        gh<_i383.LookupRepository>(),
        gh<_i271.UserRepository>(),
      ),
    );
    gh.factory<_i666.BasicInfoCubit>(
      () => _i666.BasicInfoCubit(
        gh<_i383.LookupRepository>(),
        gh<_i509.UpdatePreferencesUseCase>(),
        gh<_i271.UserRepository>(),
      ),
    );
    gh.factory<_i1066.LandingCubit>(
      () => _i1066.LandingCubit(
        gh<_i250.AuthenticateSilentUseCase>(),
        gh<_i1027.AuthenticateUseCase>(),
        gh<_i214.AuthenticateSignoutUseCase>(),
      ),
    );
    return this;
  }
}
