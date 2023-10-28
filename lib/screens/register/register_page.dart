import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/screens/login/widgets/email_field_form_view.dart';
import 'package:power_lift/screens/login/widgets/password_form_field_view.dart';
import 'package:power_lift/screens/register/widgets/full_name_text_form_field_view.dart';
import 'package:power_lift/screens/register/widgets/username_text_form_field_view.dart';
import 'package:power_lift/utils/common.dart';
import 'package:power_lift/utils/dimen.dart';
import 'package:power_lift/utils/routes.dart';
import 'package:power_lift/utils/strings.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController _username;
  late TextEditingController _password;
  late TextEditingController _confirmPassword;
  late TextEditingController _fullName;
  late TextEditingController _email;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _username = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    _fullName = TextEditingController();
    _email = TextEditingController();
    _formKey = GlobalKey();
  }

  @override
  void dispose() {
    super.dispose();
    _username.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    _fullName.dispose();
    _email.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(),
        body: Form(
          key: _formKey,
          child: SafeArea(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  EmailFieldFormView(email: _email),
                  const SizedBox(height: 20.0),
                  PasswordFormFieldView(password: _password),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    obscureText: true,
                    controller: _confirmPassword,
                    validator: (value) {
                      if ((value?.isEmpty == true) || value == null) {
                        return Strings.confirmPasswordIsRequired;
                      }
                      if (value != _password.text) {
                        return "Passwords must match.";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: Strings.confirmPassword,
                      enabledBorder:
                          Theme.of(context).inputDecorationTheme.enabledBorder,
                      focusedBorder:
                          Theme.of(context).inputDecorationTheme.focusedBorder,
                      errorBorder:
                          Theme.of(context).inputDecorationTheme.errorBorder,
                      focusedErrorBorder: Theme.of(context)
                          .inputDecorationTheme
                          .focusedErrorBorder,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  UsernameTextFormFieldView(username: _username),
                  const SizedBox(height: 20.0),
                  FullNameTextFormFieldView(fullName: _fullName),
                  Dimen.isBigScreen(context)
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1)
                      : const SizedBox(height: 20.0),
                  BlocListener<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        registered: (uid) => context
                            .go(Routes.home), // Equivalent to .replaceAll
                      );
                    },
                    child: TextButton(
                      style: Theme.of(context).textButtonTheme.style,
                      onPressed: () {
                        final isValid = _formKey.currentState?.validate();
                        if (isValid == true &&
                            (_password.text == _confirmPassword.text)) {
                          context.read<AuthBloc>().add(
                                AuthEvent.createUser(
                                    _email.text,
                                    _password.text,
                                    _username.text,
                                    _fullName.text),
                              );
                        }
                      },
                      child: const Text(Strings.register),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
