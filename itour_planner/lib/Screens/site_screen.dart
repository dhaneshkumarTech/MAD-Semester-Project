import 'package:flutter/material.dart';
import 'package:itour_planner/Screens/dashboard_screen.dart';
import 'package:itour_planner/Widgets/bottom_navigation_bar.dart';
import 'package:itour_planner/Widgets/floating_action_button.dart';
import 'package:itour_planner/Widgets/hotels_tabbar_view.dart';
import 'package:itour_planner/Widgets/sites_tabbar_view.dart';

class SiteScreen extends StatefulWidget {
  const SiteScreen({Key? key}) : super(key: key);

  @override
  State<SiteScreen> createState() => _SiteScreenState();
}

class _SiteScreenState extends State<SiteScreen> {
  @override
  Widget build(BuildContext context) {
    Color themeColor = const Color.fromRGBO(173, 37, 51, 1);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DashboardScreen(),
                          ),
                        );
                      },
                    ),
                    Card(
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: themeColor,
                            ),
                            hintText: "Search for places",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                            border: InputBorder.none,
                          ),
                          onChanged: (String keyword) {},
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Image.asset('assets/BottomAppBarIcons/filter.png'),
                      onPressed: () {},
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
