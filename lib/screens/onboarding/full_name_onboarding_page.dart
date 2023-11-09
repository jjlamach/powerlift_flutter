import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:power_lift/models/onboardinguser/onboarding_user.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';
import 'package:power_lift/screens/onboarding/widgets/onboarding_full_name_text_field.dart';
import 'package:power_lift/utils/common.dart';
import 'package:power_lift/utils/routes.dart';
import 'package:power_lift/utils/strings.dart';

@RoutePage()
class FullNameOnboardingPage extends StatelessWidget {
  const FullNameOnboardingPage({super.key});

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
                  Strings.fullName,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                  child: OnbordingFullNameTextField(),
                ),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          registered: (uid) =>
                              GoRouter.of(context).go(Routes.login),
                          error: (error) =>
                              ScaffoldMessenger.of(context).showSnackBar(
                            Common.appSnackBar(
                                'Could not create account. Contact support.'),
                          ),
                        );
                      },
                      child: OutlinedButton(
                        onPressed: () {
                          final state =
                              context.read<OnboardingCubit>().state?.fullName ??
                                  '';
                          if (state.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              Common.appSnackBar(
                                  'Full name field is required.'),
                            );
                          } else {
                            final credentials =
                                context.read<OnboardingCubit>().user;
                            context.read<AuthBloc>().add(
                                  AuthEvent.createUser(
                                    credentials?.email ?? '',
                                    credentials?.password ?? '',
                                    credentials?.username ?? '',
                                    credentials?.fullName ?? '',
                                  ),
                                );
                          }
                        },
                        child: const Text("Next"),
                      ),
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
