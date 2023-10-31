import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:power_lift/utils/routes.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/dumbbell.jpg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fitHeight,
        ),
        Positioned(
          bottom: 0, // Position at the bottom
          left: 0, // Stretch the button horizontally
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('One more rep, one step closer',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        )),
                const SizedBox(height: 20.0),
                Text(
                  'Track gains, explore routines, and connect with peers. Every rep and graph counts',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style:
                        Theme.of(context).outlinedButtonTheme.style?.copyWith(
                              backgroundColor: const MaterialStatePropertyAll(
                                Color(0xffa3ec3f),
                              ),
                            ),
                    onPressed: () {
                      // context.go(Routes.login);
                      context.go(Routes.onboardingEmail);
                    },
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
              ],
            ),
          ),
        )
      ],
    );
  }
}
