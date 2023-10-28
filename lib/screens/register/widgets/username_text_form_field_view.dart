import 'package:flutter/material.dart';
import 'package:power_lift/utils/strings.dart';

class UsernameTextFormFieldView extends StatelessWidget {
  const UsernameTextFormFieldView({
    super.key,
    required TextEditingController username,
  }) : _username = username;

  final TextEditingController _username;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: _username,
      decoration: InputDecoration(
        hintText: Strings.username,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
        errorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
        focusedErrorBorder:
            Theme.of(context).inputDecorationTheme.focusedErrorBorder,
      ),
      validator: (value) {
        if ((value?.isEmpty == true) || value == null) {
          return Strings.usernameRequired;
        }
        return null;
      },
    );
  }
}
