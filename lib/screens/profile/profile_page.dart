import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/app_router.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              loggedOut: () =>
                  AutoRouter.of(context).replace(GetStartedRoute()),
            );
          },
          child: TextButton(
            onPressed: () => {
              context.read<AuthBloc>().add(AuthEvent.logOut()),
            },
            child: Text("Log out"),
          ),
        ),
      ),
    );
  }
}
