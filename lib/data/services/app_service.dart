import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:power_lift/data/api/power_lift_api.dart';
import 'package:power_lift/data/repository/power_lift_api_impl.dart';
import 'package:power_lift/domain/usecase/createuserusecase/create_user_usecase.dart';
import 'package:power_lift/domain/usecase/deleteuserusecase/delete_user_usecase.dart';
import 'package:power_lift/domain/usecase/getcategoriesusecase/get_categories_use_case.dart';
import 'package:power_lift/domain/usecase/getexercisesusecase/getexercisesusecase.dart';
import 'package:power_lift/domain/usecase/loginusecase/login_use_case.dart';
import 'package:power_lift/main.dart';
import 'package:power_lift/navigation/app_router.dart';
import 'package:power_lift/screens/home/state/category_cubit.dart';
import 'package:power_lift/screens/home/state/exercises_cubit.dart';
import 'package:power_lift/screens/home/state/tab_controller_cubit.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/screens/login/token_interceptor.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';
import 'package:power_lift/screens/onboarding/state/password_viewer_cubit.dart';

final getIt = GetIt.instance;

class AppService {
  AppService() {
    kLogger.i('AppService running');
  }
  Future<void> _setUpDependencies() async {
    // Register Dio
    Dio dio = Dio();
    dio.interceptors.add(TokenInterceptor());
    getIt.registerLazySingleton(() => dio);

    getIt.registerLazySingleton<AppRouter>(() {
      return AppRouter();
    });

    // Register PowerLiftApi
    getIt.registerLazySingleton<PowerLiftApi>(() {
      final dio = getIt<Dio>();
      return PowerLiftApi(dio);
    });

    // Register PowerLiftApiImpl
    getIt.registerLazySingleton(() {
      final api = getIt<PowerLiftApi>();
      return PowerLiftApiImpl(api);
    });
  }

  Future<void> _setUpUseCases() async {
    getIt.registerFactory(() => LoginUseCase(getIt.get()));
    getIt.registerFactory(() => CreateUserUseCase(getIt.get()));
    getIt.registerFactory(() => GetCategoriesUseCase(getIt.get()));
    getIt.registerFactory(() => GetExercisesUseCase(getIt.get()));
    getIt.registerFactory(() => DeleteUserUseCase(getIt.get()));
  }

  Future<void> _setUpBlocsAndCubits() async {
    getIt.registerSingleton(
      AuthBloc(
        getIt.get(),
        getIt.get(),
        getIt.get(),
      ),
    );
    getIt.registerFactory(
      () => OnboardingCubit(),
    );
    getIt.registerFactory(
      () => CategoryCubit(getIt.get()),
    );
    getIt.registerFactory(
      () => ExercisesCubit(
        getIt.get(),
        getIt.get(),
      ),
    );
    getIt.registerFactory(
      () => TabControllerCubit(),
    );
    getIt.registerFactory(
      () => PasswordViewerCubit(),
    );
  }

  Future<void> setUp() async {
    await _setUpStorage();
    await _setUpUseCases();
    await _setUpDependencies();
    await _setUpBlocsAndCubits();
  }

  Future<void> _setUpStorage() async {
    await Hive.initFlutter();
    await Hive.openBox('appStorage');
  }
}
