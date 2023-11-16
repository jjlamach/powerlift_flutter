import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/data/onboardinguser/onboarding_user.dart';
import 'package:power_lift/data/services/app_service.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';
import 'package:power_lift/screens/onboarding/state/password_viewer_cubit.dart';
import 'package:power_lift/screens/onboarding/widgets/onboarding_password_text_field.dart';
import 'package:power_lift/utils/common.dart';
import 'package:power_lift/utils/routes.dart';
import 'package:power_lift/utils/strings.dart';

@RoutePage()
class PasswordOnboardingPage extends StatelessWidget {
  const PasswordOnboardingPage({super.key});
  // TODO: make it a form and stateful
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: BlocProvider<PasswordViewerCubit>(
        create: (context) => getIt<PasswordViewerCubit>(),
        child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: BlocBuilder<OnboardingCubit, OnboardingUser?>(
              builder: (context, state) => ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const Text(
                    Strings.whatIsYourPassword,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const OnboardingPasswordTextField(),
                  const SizedBox(height: 40.0),
                  TextField(
                    autofocus: true,
                    obscureText: context.watch<PasswordViewerCubit>().state,
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
                      suffixIcon: BlocBuilder<PasswordViewerCubit, bool>(
                        builder: (context, visible) {
                          if (visible) {
                            return GestureDetector(
                              onTap: () => context
                                  .read<PasswordViewerCubit>()
                                  .hidePassword(false),
                              child: const Icon(
                                Icons.visibility_off,
                              ),
                            );
                          } else {
                            return GestureDetector(
                              onTap: () => context
                                  .read<PasswordViewerCubit>()
                                  .hidePassword(true),
                              child: const Icon(
                                Icons.visibility,
                              ),
                            );
                          }
                        },
                      ),
                      hintText: Strings.confirmPassword,
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
                  const SizedBox(height: 40.0),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        final password =
                            context.read<OnboardingCubit>().state?.password;
                        final confirmPassword = context
                            .read<OnboardingCubit>()
                            .state
                            ?.confirmPassword;
                        if (password == null && confirmPassword == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              Common.appSnackBar(
                                  "Password fields are required"));
                        } else if (password != null &&
                            confirmPassword == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              Common.appSnackBar(
                                  "Confirm Password field is required"));
                        } else if (password == null &&
                            confirmPassword != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              Common.appSnackBar("Password field is required"));
                        }
                        if (password != confirmPassword) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              Common.appSnackBar("Passwords must match"));
                        } else {
                          AutoRouter.of(context)
                              .pushNamed(Routes.onboardingUsername);
                        }
                      },
                      child: const Text("Next"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
