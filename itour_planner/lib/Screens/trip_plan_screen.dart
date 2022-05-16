import 'package:flutter/material.dart';
import 'package:itour_planner/Widgets/bottom_navigation_bar.dart';
import 'package:itour_planner/Widgets/floating_action_button.dart';
import 'package:itour_planner/Models/trip_plan_model.dart';
import 'package:itour_planner/Widgets/plan_container.dart';
import 'package:itour_planner/Screens/review_screen.dart';

class Plans extends StatefulWidget {
  const Plans({Key? key}) : super(key: key);

  @override
  State<Plans> createState() => _PlanState();
}

class _PlanState extends State<Plans> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final List<TripPlanModel> _tripPlans = [
    TripPlanModel(
      tripName: 'Abdullah\'s Trip',
      image: 'assets/PlanPics/Karimabad.png',
      saves: 1,
    ),
    TripPlanModel(
      tripName: 'Bilal\'s Trip',
      image: 'assets/PlanPics/Shogran.png',
      saves: 1,
    ),
    TripPlanModel(
      tripName: 'Bilal\'s Trip',
      image: 'assets/PlanPics/Shogran.png',
      saves: 1,
    ),
    TripPlanModel(
      tripName: 'Bilal\'s Trip',
      image: 'assets/PlanPics/Shogran.png',
      saves: 1,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Plan',
            style: TextStyle(fontSize: 24),
          ),
          leading: GestureDetector(
            child: const Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ReviewsReviewedScreen(),
                ),
              );
            },
          ),
          backgroundColor: themeColor,
          bottom: TabBar(
            indicatorColor: themeColor,
            labelStyle: const TextStyle(
              fontSize: 16,
            ),
            tabs: const <Widget>[
              Tab(
                text: 'Trips',
              ),
              Tab(
                text: 'Saves',
              ),
              Tab(
                text: 'Bookings',
              ),
            ],
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          height: double.infinity,
          child: TabBarView(
            children: <Widget>[
              SizedBox(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _tripPlans.length,
                  itemBuilder: (context, index) => PlanContaienr(
                    tripName: _tripPlans[index].tripName,
                    image: _tripPlans[index].image,
                    saves: _tripPlans[index].saves,
                  ),
                ),
              ),
              Container(
                color: Colors.amber,
              ),
              Container(color: Colors.redAccent),
            ],
          ),
        ),
        floatingActionButton: const FloatingActionButtonContainer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomNavigationBarContainer(),
      ),
    );
  }
}
