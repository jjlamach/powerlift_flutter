import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/utils/common.dart';
import 'package:power_lift/utils/routes.dart';
import 'package:power_lift/utils/strings.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _username;
  late TextEditingController _password;
  late GlobalKey<FormState> _formKey;
  late FocusNode userNameFocusNode = FocusNode();
  late FocusNode passwordFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _username = TextEditingController();
    _password = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    super.dispose();
    _username.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loggedIn: (_, __) {
            GoRouter.of(context).go(Routes.index);
          },
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              Common.appSnackBar(error),
            );
          },
        );
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.logIn),
          ),
          body: Form(
            key: _formKey,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _username,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Username field \nrequired";
                              }
                              return null;
                            },
                            autofocus: true,
                            focusNode: userNameFocusNode,
                            onFieldSubmitted: (value) => FocusScope.of(context)
                                .requestFocus(passwordFocusNode),
                            cursorColor:
                                Theme.of(context).colorScheme.secondary,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                              hintText: Strings.username,
                              hintStyle: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 30,
                              ),
                              fillColor: Colors.transparent,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: const BorderSide(
                                  width: 2.0,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 40.0),
                        Expanded(
                          child: TextFormField(
                            controller: _password,
                            obscureText: true,
                            autofillHints: const <String>[
                              AutofillHints.oneTimeCode
                            ],
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password field is \nrequired.";
                              }
                              return null;
                            },
                            onFieldSubmitted: (value) {
                              final isValid = _formKey.currentState?.validate();
                              if (isValid == true) {
                                context.read<AuthBloc>().add(
                                      AuthEvent.logIn(
                                        _username.text,
                                        _password.text,
                                      ),
                                    );
                              }
                            },
                            autofocus: true,
                            focusNode: passwordFocusNode,
                            cursorColor:
                                Theme.of(context).colorScheme.secondary,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
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
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: const BorderSide(
                                  width: 2.0,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
