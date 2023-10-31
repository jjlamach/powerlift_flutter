import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';
import 'package:power_lift/utils/common.dart';
import 'package:power_lift/utils/strings.dart';

class EmailOnboardingPage extends StatelessWidget {
  const EmailOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Strings.whatIsYourEmail,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20.0),
              BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (context, state) => TextField(
                  autofocus: true,
                  onChanged: (value) =>
                      context.read<OnboardingCubit>().emailText(value),
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  cursorColor: Theme.of(context).colorScheme.secondary,
                  decoration: InputDecoration(
                    hintText: Strings.email,
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 30,
                    ),
                    fillColor: Colors.transparent,
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      final state = context.read<OnboardingCubit>().state;
                      final email = state.whenOrNull(
                        emailField: (email) => email,
                      );
                      if (email?.isEmpty == true) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            Common.appSnackBar('Email field is empty.'));
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
    );
  }
}
