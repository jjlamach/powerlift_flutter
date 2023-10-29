import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loggedOut: () {
            context.replace(Routes.login);
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Hello'),
          actions: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.whenOrNull(
                  loggedOut: () => context.go("/login"),
                );
              },
              child: TextButton(
                onPressed: () {
                  context.read<AuthBloc>().add(AuthEvent.logOut());
                },
                child: Text("Log Out"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
