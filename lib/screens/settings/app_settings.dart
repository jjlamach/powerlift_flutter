import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/utils/routes.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              loggedOut: () => GoRouter.of(context).go(Routes.getStarted),
            );
          },
          child: TextButton(
            onPressed: () {
              context.read<AuthBloc>().add(AuthEvent.logOut());
            },
            child: Text("Log Out"),
          ),
        ),
      ),
    );
  }
}
