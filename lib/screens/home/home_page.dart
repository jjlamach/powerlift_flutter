import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
          return state.maybeWhen(
            appStarted: () => Text('Home page'),
            loading: () => Text('Loading'),
            loggedIn: (id, username) => Text('Home page, $username'),
            orElse: () => const SizedBox.shrink(),
          );
        }),
      ),
    );
  }
}
