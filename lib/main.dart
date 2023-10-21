import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:power_lift/screens/login/login_page.dart';
import 'package:power_lift/screens/splashscreen/splashscreen_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PowerLiftApp());
}

final _goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreenPage(),
      routes: [
        GoRoute(
          path: 'login',
          builder: (context, state) => const LoginPage(),
        )
      ],
    )
  ],
);

class PowerLiftApp extends StatelessWidget {
  const PowerLiftApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _goRouter,
      title: 'PowerLift',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xff363062),
          onPrimary: Color(0xffF5F5F5),
          secondary: Color(0xff4D4C7D),
          onSecondary: Color(0xffF5F5F5),
          error: Colors.redAccent,
          onError: Colors.white,
          background: Color(0xffF5F5F5),
          onBackground: Colors.black,
          surface: Color(0xffF5F5F5),
          onSurface: Color(0xff4D4C7D),
        ),
      ),
    );
  }
}
