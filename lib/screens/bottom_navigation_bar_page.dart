import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_lift/app_router.dart';
import 'package:power_lift/utils/dimen.dart';

@RoutePage()
class AppBottomNavigationBarPage extends StatelessWidget {
  const AppBottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        SearchRoute(),
        FeedRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: (index) {
            tabsRouter.setActiveIndex(index);
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home, size: Dimen.iconSize), label: ""),
            NavigationDestination(
                icon: Icon(Icons.search, size: Dimen.iconSize), label: ""),
            NavigationDestination(
                icon: Icon(Icons.feed, size: Dimen.iconSize), label: ""),
            NavigationDestination(icon: Icon(Icons.person), label: ""),
          ],
        );
      },
    );
  }
}
