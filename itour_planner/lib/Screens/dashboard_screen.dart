import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:itour_planner/Models/category_model.dart';
import 'package:itour_planner/Screens/plan_trip_screen.dart';
import 'package:itour_planner/Widgets/bottom_navigation_bar.dart';

import 'package:itour_planner/Widgets/floating_action_button.dart';
import 'package:itour_planner/Models/trending_model.dart';
import 'package:itour_planner/Widgets/main_category_button.dart';
import 'package:itour_planner/Widgets/place_category_button.dart';
import 'package:itour_planner/Widgets/trending_image_container.dart';
import 'package:itour_planner/Screens/notification_screen.dart';
import 'package:itour_planner/Screens/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final List<TrendingModel> _trending = [
    const TrendingModel("assets/DashboardImages/Images/faisal_mosque.png",
        "Faisal Mosque", 3, "Historical Place", "Islamabad, Pakistan"),
    const TrendingModel("assets/DashboardImages/Images/centurus.png",
        "Centurus Mall", 3, "Historical Place", "Islamabad, Pakistan"),
    const TrendingModel("assets/DashboardImages/Images/monal.png",
        "Monal", 3, "Historical Place", "Islamabad, Pakistan"),
    const TrendingModel("assets/DashboardImages/Images/emporium.png",
        "Emporium Mall", 3, "Shopping Mall", "Lahore, Pakistan")
  ];

  final List<CategoryModel> _categories = [
    const CategoryModel(
        "assets/DashboardImages/Icons/desert.png", "Hilly Areas"),
    const CategoryModel("assets/DashboardImages/Icons/beaches.png", "Beaches"),
    const CategoryModel("assets/DashboardImages/Icons/desert.png", "Deserts")
  ];

  @override
  Widget build(BuildContext context) {
    final firebaseUser = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 60, 20, 0),
        width: double.infinity,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        //profile Picture
                        ClipOval(
                          child: SizedBox(
                            height: 55,
                            width: 55,
                            child: GestureDetector(
                              child: Image.asset("${firebaseUser?.photoURL}"),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const profileScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        //Account Name
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Hi, ${firebaseUser?.displayName}",
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: GestureDetector(
                        child: Icon(
                          Icons.notifications_none_outlined,
                          color: themeColor,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 10),
              height: 60,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Where do",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "you want to go?",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.only(bottom: 10),
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                height: 50,
                width: double.infinity,
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
            Container(
              height: 60,
              margin: const EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainCategoryButton(
                    icon: "assets/DashboardImages/Icons/sites.png",
                    text: "Sites",
                    action: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const PlanTrips()));
                    },
                  ),
                  MainCategoryButton(
                    icon: "assets/DashboardImages/Icons/hotels.png",
                    text: "Hotels",
                    action: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const PlanTrips()));
                    },
                  ),
                  MainCategoryButton(
                    icon: "assets/DashboardImages/Icons/foods.png",
                    text: "Foods",
                    action: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const PlanTrips()));
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 5),
                    child: const Text(
                      "Trending",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _trending.length,
                      itemBuilder: (context, index) => TrendingImageContainer(
                        image: _trending[index].image,
                        placeName: _trending[index].placeName,
                        rating: _trending[index].rating,
                        placeCategory: _trending[index].placeCategory,
                        location: _trending[index].location,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "Categories",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: double.infinity,
                          color: Colors.white,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _categories.length,
                            itemBuilder: (context, index) => CategoriesButton(
                              icon: _categories[index].icon,
                              text: _categories[index].text,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
    );
  }
}
