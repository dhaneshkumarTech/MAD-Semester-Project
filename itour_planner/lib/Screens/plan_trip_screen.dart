import 'package:flutter/material.dart';
import 'package:itour_planner/Widgets/bottom_navigation_bar.dart';
import 'package:itour_planner/Widgets/floating_action_button.dart';
import 'package:itour_planner/Widgets/hotels_tabbar_view.dart';
import 'package:itour_planner/Widgets/main_category_button.dart';
import 'package:itour_planner/Widgets/sites_tabbar_view.dart';

class PlanTrips extends StatefulWidget {
  const PlanTrips({Key? key}) : super(key: key);

  @override
  State<PlanTrips> createState() => _PlanTripsState();
}

class _PlanTripsState extends State<PlanTrips> {
  @override
  Widget build(BuildContext context) {
    Color themeColor = const Color.fromRGBO(173, 37, 51, 1);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const ImageIcon(
                  AssetImage("assets/BottomAppBarIcons/back.png"),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          backgroundColor: themeColor,
        ),
        body: Container(
          margin: const EdgeInsets.only(
            top: 10,
          ),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              //trip holder name
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                width: double.infinity,
                child: const Text(
                  "Jennifer's Trip",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30),
                ),
              ),

              //calendar and icon buton
              Container(
                margin: const EdgeInsets.only(left: 20, top: 10),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MainCategoryButton(
                      icon: "assets/DashboardImages/Icons/Calendar.png",
                      text: "add your travel dates",
                      action: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    MainCategoryButton(
                      icon: 'assets/DashboardImages/Icons/map.png',
                      text: "view on map",
                      action: () {},
                    ),
                  ],
                ),
              ),

              //tab bar
              Container(
                margin: const EdgeInsets.only(
                  top: 5,
                ),
                width: double.infinity,
                color: Color(0xffFFC107),
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
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SizedBox(
                  height: 431,
                  width: double.infinity,
                  child: TabBarView(
                    children: [
                      //Sites
                      SitesTabBarView(),
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

        // flaoting Action Active Button
        floatingActionButton: const FloatingActionButtonContainer(),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        //Navigation Bar
        bottomNavigationBar: const BottomNavigationBarContainer(),
      ),
    );
  }
}
