import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_lift/navigation/app_router.dart';
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
        builder: (blocContext, state) {
          final username = state.whenOrNull(
            loggedIn: (token, username) => username,
          );

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome, $username ${Strings.bicep}',
                style:
                    Theme.of(blocContext).appBarTheme.titleTextStyle?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.letsWorkOut,
                    style: Theme.of(blocContext)
                        .appBarTheme
                        .titleTextStyle
                        ?.copyWith(
                          fontSize: 30,
                        ),
                  ),
                  Common.appCircle(
                    child: IconButton(
                      onPressed: () {
                        AutoRouter.of(context).push(const AppSettingsRoute());
                      },
                      icon: const Icon(Icons.settings, size: 30),
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
