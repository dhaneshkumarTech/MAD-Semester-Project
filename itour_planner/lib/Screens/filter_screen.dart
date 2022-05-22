// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:itour_planner/Screens/dashboard_screen.dart';
import 'package:itour_planner/Screens/site_screen.dart';
import 'package:itour_planner/Widgets/hotels_tabbar_view.dart';
import 'package:itour_planner/Widgets/sites_tabbar_view.dart';

import '../Screens/filter_tabBar_view.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    bool _hasBeenPressed = false;

    Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

    bool press = false;
    void _toggleColor() {
      setState(() {
        press = !press;
      });
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Color.fromARGB(255, 198, 201, 201),
                height: double.infinity,
                width: double.infinity,
                child: ListView(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const ImageIcon(
                              AssetImage("assets/BottomAppBarIcons/back.png"),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DashboardScreen()));
                            },
                            tooltip: MaterialLocalizations.of(context)
                                .openAppDrawerTooltip,
                          ),
                          IconButton(
                            icon: const Icon(Icons.filter_list),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SiteScreen()));
                            },
                            tooltip: MaterialLocalizations.of(context)
                                .openAppDrawerTooltip,
                          ),
                        ],
                      ),
                    ),
                    //tab bar
                    Container(
                      width: double.infinity,
                      color: const Color(0xffFFC107),
                      child: TabBar(
                        indicatorColor: themeColor,
                        labelColor: Colors.black,
                        labelStyle: const TextStyle(
                          fontSize: 18,
                        ),
                        tabs: const <Widget>[
                          Tab(
                            text: 'Sites',
                          ),
                          Tab(
                            text: 'Hotels',
                          ),
                          Tab(
                            text: 'Foods',
                          ),
                        ],
                      ),
                    ),
                    // tabBar View
                    //each area list view
                    const SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SizedBox(
                        height: 650,
                        width: double.infinity,
                        child: TabBarView(
                          children: [
                            //Sites
                            SiteTabBarView(),
                            // Hotels
                            HotelsTabBarView(),
                            //Foods
                            HotelsTabBarView(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 450,
                top: 78,
                child: Container(
                  width: 480,
                  color: Color(0xffFFC107),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 0,
                          left: 20,
                          bottom: 10,
                        ),
                        child: const Text(
                          'Attractions',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RaisedButton(
                            child: const Text('Nature'),
                            textColor: Colors.white,
                            // 2
                            color: _hasBeenPressed ? Colors.blue : Colors.red,
                            // 3
                            onPressed: () => {
                              setState(() {
                                _hasBeenPressed = !_hasBeenPressed;
                              })
                            },
                          ),
                          OutlinedButton(
                            onPressed: _toggleColor,
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              side: const BorderSide(
                                  width: 1.0, color: Colors.black),
                              primary: themeColor,
                            ),
                            child: const Text(
                              'Fun and Games',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: _toggleColor,
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              side: BorderSide(width: 1.0, color: Colors.black),
                              primary: themeColor,
                            ),
                            child: const Text(
                              'Landmark',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          OutlinedButton(
                            onPressed: _toggleColor,
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              side: BorderSide(width: 1.0, color: Colors.black),
                              primary: themeColor,
                            ),
                            child: const Text(
                              'Mosque',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: _toggleColor,
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              side: BorderSide(width: 1.0, color: Colors.black),
                              primary: themeColor,
                            ),
                            child: const Text(
                              'Shoping Centre',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: _toggleColor,
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              side: BorderSide(width: 1.0, color: Colors.black),
                              primary: themeColor,
                            ),
                            child: const Text(
                              'Historical Places',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                left: 200,
                              ),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Clear all',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 30),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const FilterTabBarView()));
                                  },
                                  child: const Text(
                                    'Apply',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
