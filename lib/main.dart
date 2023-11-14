import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:power_lift/data/api/power_lift_api.dart';
import 'package:power_lift/data/repository/power_lift_api_impl.dart';
import 'package:power_lift/domain/usecase/createuserusecase/create_user_usecase.dart';
import 'package:power_lift/domain/usecase/deleteuserusecase/delete_user_usecase.dart';
import 'package:power_lift/domain/usecase/getcategoriesusecase/get_categories_use_case.dart';
import 'package:power_lift/domain/usecase/getexercisesusecase/getexercisesusecase.dart';
import 'package:power_lift/domain/usecase/loginusecase/login_use_case.dart';
import 'package:power_lift/screens/home/state/category_cubit.dart';
import 'package:power_lift/screens/home/state/exercises_cubit.dart';
import 'package:power_lift/screens/home/state/tab_controller_cubit.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/screens/login/token_interceptor.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';
import 'package:power_lift/screens/onboarding/state/password_viewer_cubit.dart';
import 'package:power_lift/screens/settings/state/delete_user_cubit.dart';

import 'app_router.dart';

// logger
final kLogger = Logger(
  filter: DevelopmentFilter(),
  printer: PrettyPrinter(
    colors: true,
    printEmojis: true,
  ),
);

final _appRouter = AppRouter();

// Service locator
final getIt = GetIt.instance;

Future<void> _setUpDependencies() async {
  // Register Dio
  Dio dio = Dio();
  dio.interceptors.add(TokenInterceptor());
  getIt.registerLazySingleton(() => dio);

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
  getIt.registerFactory(
    () => DeleteUserCubit(
      getIt.get(),
    ),
  );
}

Future<void> _setUp() async {
  await _setUpStorage();
  await _setUpUseCases();
  await _setUpDependencies();
  await _setUpBlocsAndCubits();
}

Future<void> _setUpStorage() async {
  await Hive.initFlutter();
  await Hive.openBox('appStorage');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) async {
      await _setUp().then(
        (_) => runApp(
          const PowerLiftApp(),
        ),
      );
    },
  );
}

class PowerLiftApp extends StatelessWidget {
  const PowerLiftApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.startApp(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<OnboardingCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<CategoryCubit>()..getCategories(),
        ),
        BlocProvider(
          create: (context) => getIt<ExercisesCubit>()..getExercise(1),
        ),
        BlocProvider(
          create: (context) => getIt<TabControllerCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<PasswordViewerCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<DeleteUserCubit>(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        title: 'PowerLift',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xff000000),
            onPrimary: Colors.white,
            secondary: Color(0xffa3ec3f),
            onSecondary: Colors.black,
            error: Colors.redAccent,
            onError: Colors.white,
            background: Colors.black,
            onBackground: Colors.black,
            surface: Color(0xff1e2021),
            onSurface: Colors.white,
          ),
          textSelectionTheme: const TextSelectionThemeData(
            selectionColor: Colors.blueGrey,
          ),
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
            bodySmall: TextStyle(
              fontSize: 15,
            ),
          ),
          outlinedButtonTheme: const OutlinedButtonThemeData(
            style: ButtonStyle(
              textStyle: MaterialStatePropertyAll(
                TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              foregroundColor: MaterialStatePropertyAll(Colors.black),
              backgroundColor: MaterialStatePropertyAll(
                Color(0xffa3ec3f),
              ),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(
                Colors.transparent,
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
              foregroundColor: const MaterialStatePropertyAll(
                Colors.white,
              ),
              textStyle: const MaterialStatePropertyAll(
                TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: Color(0xffa3ec3f),
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: Color(0xffa3ec3f),
              ),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: Colors.redAccent,
              ),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: Colors.redAccent,
              ),
            ),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff000000),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          snackBarTheme: SnackBarThemeData(
            backgroundColor: const Color(0xffa3ec3f).withOpacity(0.7),
            actionTextColor: Colors.white,
          ),
          dialogTheme: const DialogTheme(
            backgroundColor: Color(0xff1e2021),
          ),
        ),
      ),
    );
  }
}
