import 'package:flutter/material.dart';
import 'package:power_lift/utils/strings.dart';

class FullNameTextFormFieldView extends StatelessWidget {
  const FullNameTextFormFieldView({
    super.key,
    required TextEditingController fullName,
  }) : _fullName = fullName;

  final TextEditingController _fullName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: _fullName,
      decoration: InputDecoration(
        hintText: Strings.fullName,
        enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
        errorBorder: Theme.of(context).inputDecorationTheme.errorBorder,
        focusedErrorBorder:
            Theme.of(context).inputDecorationTheme.focusedErrorBorder,
      ),
      validator: (value) {
        if ((value?.isEmpty == true) || value == null) {
          return Strings.fullNameRequired;
        }
        return null;
      },
    );
  }
}
