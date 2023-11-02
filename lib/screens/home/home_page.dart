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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.2,
          centerTitle: false,
          flexibleSpace: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return state.maybeWhen(
                loggedIn: (id, username) => Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'Hello, $username ${'💪'}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      Flexible(
                          child: Text(
                        'This is PowerLift',
                        style: Theme.of(context).textTheme.headlineLarge,
                      )),
                    ],
                  ),
                ),
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
          // title: BlocBuilder<AuthBloc, AuthState>(
          //   builder: (context, state) {
          //     return state.maybeWhen(
          //       loggedIn: (id, username) => Column(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             'Hello, $username',
          //             style: Theme.of(context).textTheme.headlineSmall,
          //           ),
          //           Text('This is PowerLift'),
          //         ],
          //       ),
          //       orElse: () => const SizedBox.shrink(),
          //     );
          //   },
          // ),
        ),
      ),
    );
  }
}
