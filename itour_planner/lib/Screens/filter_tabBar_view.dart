import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:itour_planner/Screens/dashboard_screen.dart';
import 'package:itour_planner/Screens/filter_screen.dart';
import 'package:itour_planner/Screens/site_screen.dart';
import 'package:itour_planner/Widgets/hotel_filter_tab_bar.dart';
import 'package:itour_planner/Widgets/hotels_tabbar_view.dart';
import 'package:itour_planner/Widgets/sites_tabbar_view.dart';

class FilterTabBarView extends StatefulWidget {
  const FilterTabBarView({Key? key}) : super(key: key);

  @override
  State<FilterTabBarView> createState() => _FilterTabBarViewState();
}

class _FilterTabBarViewState extends State<FilterTabBarView> {
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
                      icon: const ImageIcon(
                        AssetImage("assets/BottomAppBarIcons/back.png"),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SiteScreen()));
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    ),
                    Card(
                      //  margin: const EdgeInsets.only(bottom: 10),
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        height: 50,
                        width: 300,
                        alignment: Alignment.center,
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
                      icon: const Icon(Icons.filter_list),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FilterScreen()));
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
                      SiteFilterView(),
                      // Hotels
                      SiteFilterView(),
                      //Foods
                      SiteFilterView(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
