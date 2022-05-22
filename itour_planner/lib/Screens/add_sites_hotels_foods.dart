import 'package:flutter/material.dart';


import 'package:itour_planner/Screens/main_search_screen.dart';



import 'plan_screen.dart';

class AddSitesHotelFoods extends StatefulWidget {
  const AddSitesHotelFoods({Key? key}) : super(key: key);

  @override
  State<AddSitesHotelFoods> createState() => _AddSitesHotelFoodsState();
}

class _AddSitesHotelFoodsState extends State<AddSitesHotelFoods> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Color themeColor = const Color.fromRGBO(173, 37, 51, 1);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TripsPlan(),
                  ),
                );
              },
            ),
          ],
          backgroundColor: themeColor,
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: [
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
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SizedBox(
                  height: 650,
                  width: double.infinity,
                  child: TabBarView(
                    children: [
                      //Sites
                      Center(
                        child: SizedBox(
                          width: 300,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(
                                  0xffFFC107), //background color of button

                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainSearchScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Add Sites",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ),
                      ),

                      Center(
                        child: SizedBox(
                          width: 300,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(
                                  0xffFFC107), //background color of button

                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainSearchScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Add Hotels",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ),
                      ),

                      Center(
                        child: SizedBox(
                          width: 300,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(
                                  0xffFFC107), //background color of button

                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainSearchScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Add Foods",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ),
                      ),

                      // Hotels

                      //Foods
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
