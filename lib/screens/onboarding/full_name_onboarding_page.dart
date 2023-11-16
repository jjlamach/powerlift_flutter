import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/data/onboardinguser/onboarding_user.dart';
import 'package:power_lift/navigation/app_router.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';
import 'package:power_lift/utils/common.dart';
import 'package:power_lift/utils/strings.dart';

@RoutePage()
class FullNameOnboardingPage extends StatefulWidget {
  const FullNameOnboardingPage({super.key});

  @override
  State<FullNameOnboardingPage> createState() => _FullNameOnboardingPageState();
}

class _FullNameOnboardingPageState extends State<FullNameOnboardingPage> {
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: BlocBuilder<OnboardingCubit, OnboardingUser?>(
            builder: (context, state) => Form(
              key: _formKey,
              child: Column(
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
                  TextFormField(
                    autofocus: true,
                    onChanged: (value) =>
                        context.read<OnboardingCubit>().fullname(value),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return Strings.fullNameRequired;
                      }
                      return null;
                    },
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    cursorColor: Theme.of(context).colorScheme.secondary,
                    decoration: InputDecoration(
                      hintText: Strings.fullName,
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
                  Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: BlocListener<AuthBloc, AuthState>(
                        listener: (context, state) {
                          state.whenOrNull(
                            registered: (uid) {
                              AutoRouter.of(context)
                                  .replace(const LoginRoute());
                            },
                            error: (error) {
                              AutoRouter.of(context).replaceAll([
                                const GetStartedRoute(),
                              ]);
                              ScaffoldMessenger.of(context).showSnackBar(
                                Common.appSnackBar('Could not create account'),
                              );
                            },
                          );
                        },
                        child: OutlinedButton(
                          onPressed: () {
                            final isValid = _formKey.currentState?.validate();
                            if (isValid == true) {
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
                          child: const Text(Strings.next),
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
      ),
    );
  }
}
