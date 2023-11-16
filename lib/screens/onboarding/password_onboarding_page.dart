import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';
import 'package:power_lift/utils/routes.dart';

import '../../utils/strings.dart';

@RoutePage()
class PasswordOnboardingPage extends StatefulWidget {
  const PasswordOnboardingPage({super.key});

  @override
  State<PasswordOnboardingPage> createState() => _PasswordOnboardingPageState();
}

class _PasswordOnboardingPageState extends State<PasswordOnboardingPage> {
  late GlobalKey<FormState> _formKey;
  var hidePassword = true;
  var hideConfirmPassword = true;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(),
        body: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(30.0),
            physics: const BouncingScrollPhysics(),
            children: [
              const Text(
                Strings.whatIsYourPassword,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextFormField(
                autofocus: true,
                obscureText: hidePassword,
                validator: (value) {
                  final confirmPassword =
                      context.read<OnboardingCubit>().state?.confirmPassword;
                  if (value == null || value.isEmpty) {
                    return Strings.passwordFieldRequired;
                  }
                  if (value != confirmPassword) {
                    return Strings.passwordsDoNotMatch;
                  }
                  return null;
                },
                autofillHints: const <String>[AutofillHints.oneTimeCode],
                onChanged: (value) =>
                    context.read<OnboardingCubit>().passwordTxt(value),
                keyboardType: TextInputType.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                cursorColor: Theme.of(context).colorScheme.secondary,
                decoration: InputDecoration(
                  suffixIcon: hidePassword == true
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              hidePassword = false;
                            });
                          },
                          child: const Icon(Icons.visibility_off),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              hidePassword = true;
                            });
                          },
                          child: const Icon(Icons.visibility),
                        ),
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
              const SizedBox(height: 40.0),
              TextFormField(
                autofocus: true,
                obscureText: hideConfirmPassword,
                validator: (value) {
                  final password =
                      context.read<OnboardingCubit>().state?.password;
                  if (value == null || value.isEmpty) {
                    return Strings.confirmPasswordIsRequired;
                  }
                  if (value != password) {
                    return Strings.passwordsDoNotMatch;
                  }
                  return null;
                },
                autofillHints: const <String>[AutofillHints.oneTimeCode],
                onChanged: (value) =>
                    context.read<OnboardingCubit>().confirmPasswordTxt(value),
                keyboardType: TextInputType.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                cursorColor: Theme.of(context).colorScheme.secondary,
                decoration: InputDecoration(
                  suffixIcon: hideConfirmPassword == true
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              hideConfirmPassword = false;
                            });
                          },
                          child: const Icon(Icons.visibility_off),
                        )
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              hideConfirmPassword = true;
                            });
                          },
                          child: const Icon(Icons.visibility),
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
                    final isValid = _formKey.currentState?.validate();
                    final passwordsMatch = context
                            .read<OnboardingCubit>()
                            .state
                            ?.password ==
                        context.read<OnboardingCubit>().state?.confirmPassword;
                    if ((isValid == true) && passwordsMatch) {
                      AutoRouter.of(context)
                          .pushNamed(Routes.onboardingUsername);
                    }
                  },
                  child: const Text(Strings.next),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
