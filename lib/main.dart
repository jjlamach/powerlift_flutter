import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:power_lift/data/services/app_service.dart';
import 'package:power_lift/screens/home/state/tab_controller_cubit.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';

import 'navigation/app_router.dart';

// logger
final kLogger = Logger(
  filter: DevelopmentFilter(),
  printer: PrettyPrinter(
    colors: true,
    printEmojis: true,
  ),
);

final _di = AppService();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) async {
      await _di.setUp().then(
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
          create: (context) => getIt<TabControllerCubit>(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: getIt<AppRouter>().config(),
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
