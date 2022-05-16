import 'package:flutter/material.dart';

class TabBarViewContainer extends StatelessWidget {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  TabBarViewContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // tabBar View
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //  const SitesTabBarView(),
          //  const HorizentalLineDivider(),

          //  const HotelsTabBarView(),

          // Tabview(),
        ],
      ),
    );
  }
}
