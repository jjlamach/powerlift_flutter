import 'package:flutter/material.dart';

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
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.deepPurple.shade50,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sports_gymnastics, size: 100),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: "Email",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            width: 2.0,
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            width: 2.0,
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.redAccent,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if ((value?.isEmpty == true) || value == null) {
                          return "Email field required.";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: _password,
                      autofocus: true,
                      validator: (value) {
                        // TODO: validate properly
                        if ((value?.isEmpty == true) || value == null) {
                          return "Password field required.";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            width: 2.0,
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            width: 2.0,
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.redAccent,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                            width: 2.0,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    ),
                    onPressed: () {
                      final isValid = _formKey.currentState?.validate();
                    },
                    child: Text(
                      "Log in",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
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
    );
  }
}
