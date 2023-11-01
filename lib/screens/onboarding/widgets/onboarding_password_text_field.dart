import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/screens/onboarding/state/onboarding_cubit.dart';
import 'package:power_lift/utils/strings.dart';

class OnboardingPasswordTextField extends StatelessWidget {
  const OnboardingPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      obscureText: true,
      onChanged: (value) => context.read<OnboardingCubit>().passwordTxt(value),
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
    );
  }
}
