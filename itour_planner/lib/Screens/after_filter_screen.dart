import 'package:flutter/material.dart';
import 'package:itour_planner/Screens/star_rating_screen.dart';
import 'package:itour_planner/Widgets/HorizentalLine.dart';
import 'package:itour_planner/Widgets/site_images.dart';


class AfterFilterScreen extends StatelessWidget {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);
  final List<String> images;
  final String siteName;
  final String siteType;
  final String siteReviews;
  final int duration;
  final int openingHours;
  final int closingHours;
  AfterFilterScreen(this.images, this.siteName, this.siteType, this.siteReviews,
      this.duration, this.openingHours, this.closingHours);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) => SiteImages(images[index]),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text(
                      siteName,
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                    ),

                    Container(
                      color: const Color.fromARGB(195, 234, 234, 234),
                      child: Text(
                        siteType,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ), ],),                                                    
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const StarRating(rating: 3.5),
                    const Padding(
                      padding: EdgeInsets.only(left: 7),
                    ),
                    Text(
                      '$siteReviews reviews',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                                Text(
                  'Duration: $duration hours',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 94, 82, 82),
                  ),
                ),

                Text(
                  'Hours: $openingHours AM - $closingHours PM',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 94, 82, 82),
                  ),
                ),
              ],
            ),
          ),
          const HorizentalLineDivider(),
        ],
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  // ignore: todo
  // TODO: implement build
  throw UnimplementedError();
}
