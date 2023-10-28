import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:power_lift/repository/power_lift_api.dart';
import 'package:power_lift/repository/power_lift_api_impl.dart';
import 'package:power_lift/screens/home/home_page.dart';
import 'package:power_lift/screens/login/login_page.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/screens/register/register_page.dart';
import 'package:power_lift/screens/splashscreen/splashscreen_page.dart';

// logger
final kLogger = Logger(
    filter: DevelopmentFilter(),
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
    ));

// Navigation
final _goRouter = GoRouter(
  redirect: (context, state) {
    final authState = context.read<AuthBloc>().state;
    return authState.whenOrNull(
      loggedIn: (uid) => "/home",
      registered: (_) => "/home",
    );
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreenPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
  ],
);

// Service locator
final getIt = GetIt.instance;

// Local Storage
const storage = FlutterSecureStorage(
  aOptions: AndroidOptions(
    encryptedSharedPreferences: true,
  ),
);

void _setUpDependencies() {
  // Register Dio
  getIt.registerLazySingleton(() => Dio());

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

void _setUpBlocsAndCubits() {
  getIt.registerSingleton(
    AuthBloc(
      getIt.get(),
    ),
  );
}

void _setUp() {
  _setUpDependencies();
  _setUpBlocsAndCubits();
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _setUp();
  runApp(const PowerLiftApp());
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
      ],
      child: MaterialApp.router(
        routerConfig: _goRouter,
        title: 'PowerLift',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xff363062),
            onPrimary: Color(0xffF5F5F5),
            secondary: Color(0xffF99417),
            onSecondary: Colors.black,
            error: Colors.redAccent,
            onError: Colors.white,
            background: Color(0xffF5F5F5),
            onBackground: Colors.black,
            surface: Color(0xffF5F5F5),
            onSurface: Color(0xff4D4C7D),
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
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
              textStyle: const MaterialStatePropertyAll(
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              foregroundColor: const MaterialStatePropertyAll(Colors.white),
              backgroundColor: MaterialStatePropertyAll(
                const Color(0xffF99417).withOpacity(0.7),
              ),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(
                Color(0xff4D4C7D),
              ),
              padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 100),
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
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                width: 2.0,
                color: Color(0xff363062),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                width: 2.0,
                color: Color(0xff363062),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                width: 2.0,
                color: Colors.redAccent,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(
                width: 2.0,
                color: Colors.redAccent,
              ),
            ),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xff363062),
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          snackBarTheme: SnackBarThemeData(
            backgroundColor: const Color(0xffF99417).withOpacity(0.7),
            actionTextColor: Colors.white,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xff363062),
          ),
        ),
      ),
    );
  }
}
