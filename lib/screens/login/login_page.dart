import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:power_lift/main.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/screens/login/widgets/email_field_form_view.dart';
import 'package:power_lift/screens/login/widgets/password_form_field_view.dart';
import 'package:power_lift/utils/dimen.dart';
import 'package:power_lift/utils/routes.dart';
import 'package:power_lift/utils/strings.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _email;
  late TextEditingController _password;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loggedIn: (uid) {
            context.replace(Routes.home);
          },
        );
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
          appBar: AppBar(
            leading: const SizedBox.shrink(),
            title: const Text(Strings.appName),
          ),
          body: Form(
            key: _formKey,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1),
                      Icon(
                        Icons.sports_gymnastics,
                        size: 100,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(height: 40.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text.rich(
                          TextSpan(
                            text: Strings.dontHaveAnAccountYet,
                            style: Theme.of(context).textTheme.bodySmall,
                            children: [
                              TextSpan(
                                text: Strings.register,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                              )
                            ],
                          ),
                        ),
                      ),
                      EmailFieldFormView(email: _email),
                      PasswordFormFieldView(password: _password),
                      Dimen.isBigScreen(context)
                          ? SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1,
                            )
                          : const SizedBox.shrink(),
                      TextButton(
                        style: Theme.of(context).textButtonTheme.style,
                        onPressed: () {
                          final isValid = _formKey.currentState?.validate();
                          if (isValid == true) {
                            context.read<AuthBloc>().add(
                                AuthEvent.logIn(_email.text, _password.text));
                          }
                        },
                        child: Text(
                          Strings.signIn,
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
