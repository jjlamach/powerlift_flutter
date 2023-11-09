import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/utils/routes.dart';
import 'package:power_lift/utils/strings.dart';

@RoutePage()
class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    final state = context.read<AuthBloc>().state;
    Future.delayed(const Duration(seconds: 2)).then(
      (value) {
        state.whenOrNull(
          appStarted: () => AutoRouter.of(context).replaceNamed(Routes.index),
          // loggedOut: () => AutoRouter.of(context).replaceNamed(Routes.login),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            Strings.appName,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
