import 'package:flutter/material.dart';
import 'package:itour_planner/ReviewsScreen/ReviewedScreen/model/review.dart';
import 'package:itour_planner/ReviewsScreen/ToReviewScreen/model/to_review.dart';
import 'package:itour_planner/ReviewsScreen/ToReviewScreen/toReview_container.dart';
import 'ReviewedScreen/reviewed_container.dart';

class ReviewsReviewedScreen extends StatefulWidget {
  const ReviewsReviewedScreen({Key? key}) : super(key: key);

  @override
  State<ReviewsReviewedScreen> createState() => _ReviewsReviewedScreenState();
}

class _ReviewsReviewedScreenState extends State<ReviewsReviewedScreen> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final List<Review> _reviewed = [
    Review(
      'Abdullah\'s Trip',
      'Damn-e-Koh',
      3,
      '25 Nov, 4:51am',
      'A panoramic view of capital of Pakistan',
      'Great View',
      'assets/ReviewPics/damn_e_koh.png',
    ),
    Review(
      'Lahore Trip',
      'Fortress',
      3,
      '21 Jan, 4:51am',
      'City of Lights',
      'Great View',
      'assets/ReviewPics/fortres.png',
    ),
  ];

  final List<ToReview> _toReviews = [
    ToReview(
      'Abdullah\'s Trip',
      'Damn-e-Koh',
      3,
      'Islamabad',
      'assets/ReviewPics/damn_e_koh.png',
    ),
    ToReview(
      'Lahore Trip',
      'Fortress',
      3,
      'Lahore',
      'assets/ReviewPics/fortres.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Reviews',
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
                text: 'Reviews',
              ),
              Tab(
                text: 'To Review',
              ),
            ],
          ),
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          height: double.infinity,
          child: TabBarView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: _reviewed.length,
                      itemBuilder: (context, index) => ReviewContainer(
                        _reviewed[index].tripName,
                        _reviewed[index].place,
                        _reviewed[index].rating,
                        _reviewed[index].date,
                        _reviewed[index].title,
                        _reviewed[index].description,
                        _reviewed[index].picture,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _toReviews.length,
                  itemBuilder: (context, index) => ToReviewContainer(
                    _toReviews[index].tripName,
                    _toReviews[index].place,
                    _toReviews[index].rating,
                    _toReviews[index].location,
                    _toReviews[index].picture,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: themeColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: themeColor,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage("assets/BottomAppBarIcons/plan.png"),
                color: themeColor,
              ),
              label: 'Plan',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage("assets/BottomAppBarIcons/booking.png"),
                color: themeColor,
              ),
              label: 'Booking',
            ),
          ],
          selectedItemColor: themeColor,
          onTap: null,
        ),
      ),
    );
  }
}
