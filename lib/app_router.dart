import 'package:auto_route/auto_route.dart';
import 'package:power_lift/addworkout/add_workout_page.dart';
import 'package:power_lift/screens/bottom_navigation_bar_page.dart';
import 'package:power_lift/screens/feed/feed_page.dart';
import 'package:power_lift/screens/home/home_page.dart';
import 'package:power_lift/screens/login/login_page.dart';
import 'package:power_lift/screens/onboarding/confirm_password_onboarding_page.dart';
import 'package:power_lift/screens/onboarding/email_onboarding_page.dart';
import 'package:power_lift/screens/onboarding/full_name_onboarding_page.dart';
import 'package:power_lift/screens/onboarding/password_onboarding_page.dart';
import 'package:power_lift/screens/onboarding/username_onboarding_page.dart';
import 'package:power_lift/screens/profile/profile_page.dart';
import 'package:power_lift/screens/register/register_page.dart';
import 'package:power_lift/screens/search/search_page.dart';
import 'package:power_lift/screens/settings/app_settings_page.dart';
import 'package:power_lift/screens/splashscreen/get_started_page.dart';
import 'package:power_lift/screens/splashscreen/splashscreen_page.dart';

import 'auth_guard.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: "/",
          page: SplashRouteRoute.page,
        ),
        AutoRoute(
          path: "/login",
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: "/get-started",
          page: GetStartedRoute.page,
        ),
        AutoRoute(
          path: "/index",
          page: AppBottomNavigationBarRoute.page,
          guards: [
            AuthGuard(),
          ],
          children: [
            AutoRoute(
              path: "home",
              page: HomeRoute.page,
              initial: true,
            ),
            AutoRoute(
              path: "search",
              page: SearchRoute.page,
            ),
            AutoRoute(
              path: "feed",
              page: FeedRoute.page,
            ),
            AutoRoute(
              path: "profile",
              page: ProfileRoute.page,
            ),
            AutoRoute(
              path: "app-settings",
              page: AppSettingsRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: "/add-workout",
          guards: [AuthGuard()],
          page: AddWorkoutRoute.page,
        ),
        AutoRoute(
          path: "/register",
          page: RegisterRoute.page,
        ),
        AutoRoute(
          path: "/onboarding-email",
          page: EmailOnboardingRoute.page,
        ),
        AutoRoute(
          path: "/onboarding-password",
          page: PasswordOnboardingRoute.page,
        ),
        AutoRoute(
          path: "/onboarding-confirm-password",
          page: ConfirmPasswordOnboardingRoute.page,
        ),
        AutoRoute(
          path: "/onboarding-username",
          page: UsernameOnboardingRoute.page,
        ),
        AutoRoute(
          path: "/onboarding-fullName",
          page: FullNameOnboardingRoute.page,
        )
      ];
}
