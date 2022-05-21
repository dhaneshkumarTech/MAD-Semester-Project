import 'package:flutter/material.dart';
import 'package:itour_planner/Screens/star_rating_screen.dart';

class TrendingImageContainer extends StatelessWidget {
  final String image;
  final String placeName;
  final double rating;
  final String placeCategory;
  final String location;

  const TrendingImageContainer(
      {Key? key,
      required this.image,
      required this.placeName,
      required this.rating,
      required this.placeCategory,
      required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //for images
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            width: 150,
            height: 170,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  placeName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const StarRating(rating: 3.5),
                Text(
                  placeCategory,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
