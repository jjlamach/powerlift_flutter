import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AppSettingsPage extends StatelessWidget {
  const AppSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Settings"),
      ),
      body: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) => Card(
          child: Text("About this app"),
        ),
      ),
      // body: Center(
      //   child: Card(
      //     child: SizedBox(
      //       width: double.infinity,
      //       height: MediaQuery.of(context).size.height * 0.3,
      //       child: Column(
      //         children: [
      //           TextButton(
      //               onPressed: () {
      //                 showAboutDialog(
      //                   applicationName: "PowerLift",
      //                   applicationVersion: "1.0",
      //                   context: context,
      //                 );
      //               },
      //               child: Text("About this app")),
      //           BlocListener<AuthBloc, AuthState>(
      //             listener: (context, state) {
      //               state.whenOrNull(
      //                 loggedOut: () => AutoRouter.of(context)
      //                     .replaceNamed(Routes.getStarted),
      //               );
      //             },
      //             child: TextButton(
      //               onPressed: () {
      //                 context.read<AuthBloc>().add(AuthEvent.logOut());
      //               },
      //               child: Text("Log Out"),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
