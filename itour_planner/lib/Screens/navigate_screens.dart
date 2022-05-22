import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:itour_planner/Screens/dashboard_screen.dart';
import 'package:itour_planner/Screens/main_search_screen.dart';
import 'package:itour_planner/Screens/plan_trip_screen.dart';
import 'package:itour_planner/Screens/plane_plan_container.dart';
import 'package:itour_planner/Screens/site_screen.dart';

class NavigateScreens extends StatefulWidget {
  const NavigateScreens({Key? key}) : super(key: key);

  @override
  State<NavigateScreens> createState() =>
      _NavigateScreensState();
}

class _NavigateScreensState
    extends State<NavigateScreens> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final _navigationKey = GlobalKey<CurvedNavigationBarState>();

  int index = 0;
  final screens = [
    const DashboardScreen(),
    const MainSearchScreen(),
    const PlanePlanContainer(),
    const DashboardScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: themeColor),
        ),
        child: CurvedNavigationBar(
          height: 60,
          key: _navigationKey,
          index: index,
          backgroundColor: themeColor.withOpacity(0.1),
          animationDuration: const Duration(milliseconds: 300),
          items: const <Widget>[
            Icon(
              Icons.home_filled,
              size: 30,
            ),
            Icon(
              Icons.search_outlined,
              size: 30,
            ),
            Icon(
              Icons.favorite_rounded,
              size: 30,
            ),
            Icon(
              Icons.key,
              size: 30,
            ),
          ],
          letIndexChange: (index) => true,
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
    );
  }
}
