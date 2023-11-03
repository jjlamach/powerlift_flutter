import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';
import 'package:power_lift/utils/common.dart';
import 'package:power_lift/utils/strings.dart';

class HomePageAppBarView extends StatelessWidget {
  const HomePageAppBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      centerTitle: false,
      titlePadding: const EdgeInsets.all(20.0),
      title: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          final username = state.whenOrNull(
            loggedIn: (token, username) => username,
          );

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome, $username ${Strings.bicep}',
                style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'This is PowerLift',
                    style:
                        Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                              fontSize: 30,
                            ),
                  ),
                  Common.appCircle(
                    child: IconButton(
                      onPressed: () {
                        // TODO: Enable notifications
                        ScaffoldMessenger.of(context).showSnackBar(
                            Common.appSnackBar(
                                'Enable/disable notifications feat.'));
                      },
                      icon: const Icon(Icons.notifications, size: 30),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
