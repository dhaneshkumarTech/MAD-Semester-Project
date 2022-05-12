import 'package:flutter/material.dart';

class ToReviewContainer extends StatelessWidget {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final String tripName;
  final String place;
  final double rating;
  final String location;
  final String picture;

  const ToReviewContainer(
      this.tripName, this.place, this.rating, this.location, this.picture,
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
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            place,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 7),
                          child: Text(
                            location,
                            style: const TextStyle(
                              fontSize: 14,
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
          ],
        ),
      ),
    );
  }
}
