import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_lift/utils/common.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  //Center(
  //         child: BlocListener<AuthBloc, AuthState>(
  //           listener: (context, state) {
  //             state.whenOrNull(
  //               loggedOut: () =>
  //                   AutoRouter.of(context).replace(GetStartedRoute()),
  //             );
  //           },
  //           child: TextButton(
  //             onPressed: () => {
  //               context.read<AuthBloc>().add(AuthEvent.logOut()),
  //             },
  //             child: Text("Log out"),
  //           ),
  //         ),
  //       ),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green.withOpacity(0.5),
                  width: 4.0,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/no_picture.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Profile Information",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            filled: false,
                            hintText: "Name",
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            filled: false,
                            hintText: "Username",
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            filled: false,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My workouts",
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    GestureDetector(
                      onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                          Common.appSnackBar('View all workouts screen')),
                      child: Text(
                        "Show all",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Card(
                      child: SizedBox(
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Save changes"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
