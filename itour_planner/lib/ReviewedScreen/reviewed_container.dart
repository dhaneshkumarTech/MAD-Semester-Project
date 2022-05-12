import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewContainer extends StatelessWidget {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final String tripName;
  final String place;
  final double rating;
  final String date;
  final String title;
  final String description;
  final String picture;

  const ReviewContainer(this.tripName, this.place, this.rating, this.date,
      this.title, this.description, this.picture,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 90,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    child: Image.asset(picture),
                    height: double.infinity,
                    width: 120,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: themeColor.withOpacity(0.1)),
                          child: Text(
                            tripName,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Text(
                            place,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(0),
                          child: RatingBar.builder(
                            itemSize: 20,
                            initialRating: rating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0.1),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: themeColor,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Text(
                            date,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 78,
                    margin: const EdgeInsets.only(left: 10),
                    alignment: Alignment.topRight,
                    child: const Icon(
                      Icons.more_vert,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
