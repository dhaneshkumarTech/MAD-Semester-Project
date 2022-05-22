import 'package:flutter/material.dart';
import 'package:itour_planner/Widgets/hotels_tabbar_view.dart';
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
          title: const Text('Plans'),
          leading: GestureDetector(
            child: const Icon(Icons.arrow_back_ios),
            onTap: () {},
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
                    fontSize: 26,
                  ),
                ),
              ),

              //calendar and icon buton
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black),
                      ),
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: 160,
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.location_city),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 2,
                            ),
                            child: const Text(
                              'Add your travel date',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black),
                      ),
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      width: 130,
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.location_on_outlined),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 2,
                            ),
                            child: const Text(
                              'view on map',
                            ),
                          ),
                        ],
                      ),
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
              const SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SizedBox(
                  height: 431,
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
    );
  }
}
