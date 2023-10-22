import 'package:flutter/material.dart';
import 'package:power_lift/utils/strings.dart';

class EmailFieldFormView extends StatelessWidget {
  const EmailFieldFormView({
    super.key,
    required TextEditingController email,
  }) : _email = email;

  final TextEditingController _email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: _email,
        autofocus: true,
        decoration: InputDecoration(
          hintText: Strings.email,
          enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
          focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
          errorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
          focusedErrorBorder:
              Theme.of(context).inputDecorationTheme.focusedErrorBorder,
        ),
        validator: (value) {
          if ((value?.isEmpty == true) || value == null) {
            return Strings.emailFieldRequired;
          }
          return null;
        },
      ),
    );
  }
}
