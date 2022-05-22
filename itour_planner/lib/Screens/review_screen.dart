import 'package:flutter/material.dart';
import 'package:itour_planner/Screens/navigate_screens.dart';
import 'package:itour_planner/Models/review_model.dart';
import 'package:itour_planner/Widgets/to_review_container.dart';
import '../Widgets/reviewed_container.dart';

class ReviewsReviewedScreen extends StatefulWidget {
  const ReviewsReviewedScreen({Key? key}) : super(key: key);

  @override
  State<ReviewsReviewedScreen> createState() => _ReviewsReviewedScreenState();
}

class _ReviewsReviewedScreenState extends State<ReviewsReviewedScreen> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final List<ReviewModel> _reviewed = [
    ReviewModel(
      'Abdullah\'s Trip',
      'Damn-e-Koh',
      3,
      '25 Nov, 4:51am',
      'A panoramic view of capital of Pakistan',
      'Great View',
      'assets/ReviewPics/damn_e_koh.png',
      'Islamabad'
    ),
    ReviewModel(
      'Lahore Trip',
      'Fortress',
      3,
      '21 Jan, 4:51am',
      'City of Lights',
      'Great View',
      'assets/ReviewPics/fortres.png',
      'Islamabad'
    ),
  ];

  final List<ReviewModel> _toReviews = [
    ReviewModel(
      'Abdullah\'s Trip',
      'Damn-e-Koh',
      3,
      '25 Nov, 4:51am',
      'A panoramic view of capital of Pakistan',
      'Great View',
      'assets/ReviewPics/damn_e_koh.png',
      'Islamabad'
    ),
    ReviewModel(
      'Lahore Trip',
      'Fortress',
      3,
      '21 Jan, 4:51am',
      'City of Lights',
      'Great View',
      'assets/ReviewPics/fortres.png',
      'Islamabad'
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
          margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: SizedBox(
            height: 540,
            child: TabBarView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 540,
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
                  height: 540,
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
        ),
      ),
    );
  }
}
