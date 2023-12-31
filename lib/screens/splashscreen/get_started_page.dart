import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_lift/utils/routes.dart';
import 'package:power_lift/utils/strings.dart';

@RoutePage()
class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/dumbbell.jpg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Positioned(
            top: 50,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: OutlinedButton(
                onPressed: () {
                  AutoRouter.of(context).pushNamed(Routes.login);
                },
                child: const Text(Strings.signIn),
              ),
            ),
          ),
          Positioned(
            bottom: 0, // Position at the bottom
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    Strings.appMessage1,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    Strings.appMessage2,
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
                        AutoRouter.of(context)
                            .pushNamed(Routes.onboardingEmail);
                      },
                      child: const Text(
                        Strings.getStarted,
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
      ),
    );
  }
}
