import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:power_lift/screens/home/home_page.dart';
import 'package:power_lift/utils/dimen.dart';
import 'package:power_lift/utils/routes.dart';

import 'login/state/auth_bloc.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key});

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const HomePage(),
        Container(
          alignment: Alignment.center,
          child: const Text('Feed'),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Social'),
        ),
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
        ],
      ),
    );
  }
}
