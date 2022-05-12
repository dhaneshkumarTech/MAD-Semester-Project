import 'package:flutter/material.dart';
import 'package:itour_planner/ToReviewScreen/model/to_review.dart';
import './toReview_container.dart';
import '../ReviewedScreen/reviews_reviewed_screen.dart';

class ReviewsToReviewScreen extends StatefulWidget {
  const ReviewsToReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewsToReviewScreen> createState() => _ReviewsReviewedScreenState();
}

class _ReviewsReviewedScreenState extends State<ReviewsToReviewScreen> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final List<ToReview> _reviews = [
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reviews'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: themeColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20),
            child: Container(
              margin: const EdgeInsets.only(right: 5),
              alignment: Alignment.centerRight,
              child: OutlinedButton(
                child: const Text('Reviewed'),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ReviewsReviewedScreen(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  primary: themeColor,
                  side: BorderSide(
                    color: themeColor,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: 500,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: _reviews.length,
              itemBuilder: (context, index) => ToReviewContainer(
                _reviews[index].tripName,
                _reviews[index].place,
                _reviews[index].rating,
                _reviews[index].location,
                _reviews[index].picture,
              ),
            ),
          ),
        ],
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
    );
  }
}
