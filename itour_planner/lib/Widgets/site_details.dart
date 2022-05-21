import 'package:flutter/material.dart';
import 'package:itour_planner/Screens/star_rating_screen.dart';

import 'site_images.dart';

class SiteDetails extends StatelessWidget {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);
  final List<String> images;
  final String siteName;
  final String siteType;
  final String siteReviews;
  final int duration;
  final int openingHours;
  final int closingHours;
  final VoidCallback action;
  const SiteDetails(this.images, this.siteName, this.siteType, this.siteReviews,
      this.duration, this.openingHours, this.closingHours, this.action,
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) => SiteImages(images[index]),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        siteName,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        margin: const EdgeInsets.only(left: 10),
                        color: Colors.grey.withOpacity(0.2),
                        child: Text(
                          siteType,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Duration: $duration hours',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Hours: $openingHours AM - $closingHours PM',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
