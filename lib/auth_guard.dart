import 'package:auto_route/auto_route.dart';
import 'package:power_lift/app_router.dart';
import 'package:power_lift/main.dart';
import 'package:power_lift/screens/login/state/auth_bloc.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final authState = getIt.get<AuthBloc>().state;
    authState.maybeWhen(
      loggedIn: (token, username) => resolver.next(true),
      loggedOut: () => router.push(const GetStartedRoute()),
      orElse: () => router.push(const GetStartedRoute()),
    );
  }
}
