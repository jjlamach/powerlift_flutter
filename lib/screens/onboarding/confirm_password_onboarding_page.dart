import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:power_lift/models/onboardinguser/onboarding_user.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';
import 'package:power_lift/utils/common.dart';
import 'package:power_lift/utils/routes.dart';
import 'package:power_lift/utils/strings.dart';

@RoutePage()
class ConfirmPasswordOnboardingPage extends StatelessWidget {
  const ConfirmPasswordOnboardingPage({super.key});

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
                  Strings.confirmPassword,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: TextField(
                    autofocus: true,
                    obscureText: true,
                    autofillHints: const <String>[AutofillHints.oneTimeCode],
                    onChanged: (value) => context
                        .read<OnboardingCubit>()
                        .confirmPasswordTxt(value),
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    cursorColor: Theme.of(context).colorScheme.secondary,
                    decoration: InputDecoration(
                      hintText: Strings.password,
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
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        final password =
                            context.read<OnboardingCubit>().state?.password;
                        final confirmPassword = context
                                .read<OnboardingCubit>()
                                .state
                                ?.confirmPassword ??
                            '';
                        if (confirmPassword.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              Common.appSnackBar('Password field is required'));
                        }
                        if (confirmPassword != password) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              Common.appSnackBar('Passwords do not match.'));
                        } else {
                          // GoRouter.of(context).push(Routes.onboardingUsername);
                          AutoRouter.of(context)
                              .pushNamed(Routes.onboardingUsername);
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
