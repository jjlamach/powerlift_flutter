import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/models/onboardinguser/onboarding_user.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';
import 'package:power_lift/screens/onboarding/widgets/onboarding_password_text_field.dart';
import 'package:power_lift/utils/common.dart';
import 'package:power_lift/utils/strings.dart';

class PasswordOnboardingPage extends StatelessWidget {
  const PasswordOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: BlocBuilder<OnboardingCubit, OnboardingUser?>(
            builder: (context, state) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  Strings.whatIsYourPassword,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20.0),
                const OnboardingPasswordTextField(),
                const SizedBox(height: 40.0),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        final state =
                            context.read<OnboardingCubit>().state?.password ??
                                '';
                        if (state.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              Common.appSnackBar('Password field is required'));
                        } else {
                          print('Continue');
                        }
                      },
                      child: const Text("Next"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
