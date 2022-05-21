import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:itour_planner/Screens/site_screen.dart';
import 'package:itour_planner/Screens/star_rating_screen.dart';
import 'package:itour_planner/Widgets/HorizentalLine.dart';

class SitesSinglePage extends StatefulWidget {
  const SitesSinglePage({
    Key? key,
    required this.images,
    required this.siteName,
    required this.siteType,
    required this.siteReviews,
    required this.address,
    required this.duration,
    required this.openingHours,
    required this.closingHours,
  }) : super(key: key);
  final List<String> images;
  final String siteName;
  final String siteType;
  final String siteReviews;
  final String address;
  final int duration;
  final int openingHours;
  final int closingHours;
  @override
  State<SitesSinglePage> createState() => _SitesSinglePageState();
}

class _SitesSinglePageState extends State<SitesSinglePage> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  bool _press = false;

  void _toggleLikeButton() {
    setState(() {
      _press = !_press;
    });
  }

  @override
  Widget build(BuildContext context) {
    final firebaseUser = FirebaseAuth.instance.currentUser;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SiteScreen(),
                ),
              );
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
          ],
          backgroundColor: themeColor,
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Image.asset(
                    widget.images[0],
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: ClipOval(
                    child: Container(
                      color: Colors.white,
                      child: IconButton(
                        icon: (_press)
                            ? const Icon(Icons.favorite_outlined)
                            : Icon(
                                Icons.favorite,
                                color: themeColor,
                              ),
                        onPressed: _toggleLikeButton,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          widget.siteName,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          color: const Color.fromARGB(195, 234, 234, 234),
                          child: Text(
                            widget.siteType,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 5,
                    ),
                    child: Row(
                      children: [
                        const StarRating(rating: 3.5),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text(
                            '${widget.siteReviews} reviews',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 5,
                    ),
                    child: Text(
                      widget.address,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black),
                    ),
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 10,
                    ),
                    width: 130,
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.location_on_outlined),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 2,
                          ),
                          child: const Text(
                            'view on map',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 1.0),
                        bottom: BorderSide(width: 1.0),
                      ),
                    ),
                    width: double.infinity,
                    height: 75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              const Text(
                                'Hours',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: Text(
                                  '${widget.openingHours} AM - ${widget.closingHours} PM',
                                  style: const TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              const Text(
                                'Suggested Duration',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: Text(
                                  '${widget.duration} hour(s)',
                                  style: const TextStyle(
                                    fontSize: 15,
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
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: const Text(
                      'About',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia ...",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Read more'),
                    style: TextButton.styleFrom(
                      primary: themeColor,
                      padding: const EdgeInsets.all(0),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Reviews',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Row(
                      children: [
                        const StarRating(rating: 3.5),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text(
                            '${widget.siteReviews} reviews',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const HorizentalLineDivider(),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Row(
                      children: [
                        const StarRating(rating: 5),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Text(
                            '(210)',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Row(
                      children: [
                        const StarRating(rating: 4),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Text(
                            '(700)',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Row(
                      children: [
                        const StarRating(rating: 3),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Text(
                            '(111)',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Row(
                      children: [
                        const StarRating(rating: 2),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Text(
                            '(76)',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Row(
                      children: [
                        const StarRating(rating: 1),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Text(
                            '(1)',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const HorizentalLineDivider(),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
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
                                    child: Image.asset(
                                        "${firebaseUser?.photoURL}"),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              //Account Name
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${firebaseUser?.displayName}",
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    const Text(
                                      '22 May, 2022',
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: const StarRating(rating: 5),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 5),
                                child: const Text(
                                  'There are many variations of passages',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Text(
                                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock...",
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text('Read more'),
                                style: TextButton.styleFrom(
                                  primary: themeColor,
                                  padding: const EdgeInsets.all(0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const HorizentalLineDivider(),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
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
                                    child: Image.asset(
                                        "assets/ProfilePics/dhanesh.jpeg"),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              //Account Name
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                     Text(
                                      "Dhanesh Kumar",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      '21 April, 2022',
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: const StarRating(rating: 5),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 5),
                                child: const Text(
                                  'There are many variations of passages',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Text(
                                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock...",
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text('Read more'),
                                style: TextButton.styleFrom(
                                  primary: themeColor,
                                  padding: const EdgeInsets.all(0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const HorizentalLineDivider(),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
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
                                    child: Image.asset(
                                        "assets/ProfilePics/bilal.jpeg"),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              //Account Name
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Muhammad Bilal",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      '17 March, 2022',
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: const StarRating(rating: 5),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 5),
                                child: const Text(
                                  'There are many variations of passages',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Text(
                                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock...",
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text('Read more'),
                                style: TextButton.styleFrom(
                                  primary: themeColor,
                                  padding: const EdgeInsets.all(0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
