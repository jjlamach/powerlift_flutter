import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_lift/utils/common.dart';
import 'package:power_lift/utils/strings.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(Strings.profile),
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
                    Strings.profileInformation,
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
                          readOnly: true,
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            filled: false,
                            hintText: Strings.name,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          readOnly: true,
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            filled: false,
                            hintText: Strings.username,
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          readOnly: true,
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            filled: false,
                            hintText: Strings.email,
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
                      Strings.myWorkouts,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    GestureDetector(
                      onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                          Common.appSnackBar('View all workouts screen')),
                      child: Text(
                        Strings.showAll,
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
                    child: const Text(Strings.saveChanges),
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
