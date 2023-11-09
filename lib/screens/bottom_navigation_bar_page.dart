import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_lift/screens/home/home_page.dart';
import 'package:power_lift/screens/settings/app_settings_page.dart';
import 'package:power_lift/utils/dimen.dart';

@RoutePage()
class AppBottomNavigationBarPage extends StatefulWidget {
  const AppBottomNavigationBarPage({super.key});

  @override
  State<AppBottomNavigationBarPage> createState() =>
      _AppBottomNavigationBarPageState();
}

class _AppBottomNavigationBarPageState
    extends State<AppBottomNavigationBarPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomePage(),
        Container(
          alignment: Alignment.center,
          child: const Text('Feed'),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Social'),
        ),
        const AppSettingsPage(),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.home, size: Dimen.iconSize), label: ""),
          NavigationDestination(
              icon: Icon(Icons.search, size: Dimen.iconSize), label: ""),
          NavigationDestination(
              icon: Icon(Icons.feed, size: Dimen.iconSize), label: ""),
          NavigationDestination(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
