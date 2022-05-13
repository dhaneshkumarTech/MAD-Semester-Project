import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:itour_planner/LoginScreen/login_screen.dart';

class BottomNavigationBarContainer extends StatefulWidget {
  const BottomNavigationBarContainer({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarContainer> createState() =>
      _BottomNavigationBarContainerState();
}

class _BottomNavigationBarContainerState
    extends State<BottomNavigationBarContainer> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final _navigationKey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: IconThemeData(color: themeColor),
      ),
      child: ClipRRect(
        child: CurvedNavigationBar(
          key: _navigationKey,
          index: 0,
          backgroundColor: themeColor.withOpacity(0.1),
          animationCurve: Curves.easeInOut,
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
          onTap: (index) {
            if (index == 0) {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const LoginScreen(),
              //   ),
              // );
            }
          },
        ),
      ),
    );
  }
}
