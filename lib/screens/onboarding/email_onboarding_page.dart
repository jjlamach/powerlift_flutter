import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/data/onboardinguser/onboarding_user.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';
import 'package:power_lift/screens/onboarding/widgets/onboarding_email_text_field.dart';
import 'package:power_lift/utils/common.dart';
import 'package:power_lift/utils/routes.dart';
import 'package:power_lift/utils/strings.dart';

@RoutePage()
class EmailOnboardingPage extends StatelessWidget {
  const EmailOnboardingPage({super.key});

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
                const Expanded(child: SizedBox()),
                const Text(
                  Strings.whatIsYourEmail,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                  child: OnboardingEmailTextField(),
                ),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        final state =
                            context.read<OnboardingCubit>().state?.email ?? '';
                        if (state.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              Common.appSnackBar('Email field is required'));
                        }
                        if (!EmailValidator.validate(state)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              Common.appSnackBar('Not a valid email.'));
                        } else {
                          // GoRouter.of(context).push(Routes.onboardingPassword);
                          AutoRouter.of(context)
                              .pushNamed(Routes.onboardingPassword);
                        }
                      },
                      child: const Text("Next"),
                    ),
                  ),
                ),
                const Expanded(flex: 2, child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
