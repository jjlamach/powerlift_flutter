import 'package:flutter/material.dart';
import 'package:power_lift/utils/strings.dart';

class PasswordFormFieldView extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  const PasswordFormFieldView({
    super.key,
    this.hintText,
    this.errorText,
    required TextEditingController password,
  }) : _password = password;

  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      controller: _password,
      validator: (value) {
        if ((value?.isEmpty == true) || value == null) {
          return errorText ?? Strings.passwordFieldRequired;
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText ?? Strings.password,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
        errorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
        focusedErrorBorder:
            Theme.of(context).inputDecorationTheme.focusedErrorBorder,
      ),
    );
  }
}
