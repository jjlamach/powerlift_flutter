import 'package:flutter/material.dart';
import 'package:power_lift/utils/strings.dart';

class PasswordFormFieldView extends StatelessWidget {
  const PasswordFormFieldView({
    super.key,
    required TextEditingController password,
  }) : _password = password;

  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: TextFormField(
        obscureText: true,
        controller: _password,
        autofocus: true,
        validator: (value) {
          if ((value?.isEmpty == true) || value == null) {
            return Strings.passwordFieldRequired;
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: Strings.password,
          enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
          focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
          errorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
          focusedErrorBorder:
              Theme.of(context).inputDecorationTheme.focusedErrorBorder,
        ),
      ),
    );
  }
}
