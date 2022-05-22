import 'package:flutter/material.dart';
import 'package:itour_planner/Widgets/hotels_tabbar_view.dart';
import 'package:itour_planner/Widgets/sites_tabbar_view.dart';

import 'filter_screen.dart';
import 'food_tab_view.dart';

class SiteScreen extends StatefulWidget {
  const SiteScreen({Key? key}) : super(key: key);

  @override
  State<SiteScreen> createState() => _SiteScreenState();
}

class _SiteScreenState extends State<SiteScreen> {
  final TextEditingController _searchController = TextEditingController();
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
              Container(
                color: const Color(0xffFFC107),
                width: double.infinity,
                    child: IconButton(
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
                      FoodTabBarView(),
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
