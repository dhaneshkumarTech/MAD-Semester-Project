// ignore_for_file: deprecated_member_use, camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../FirebaseServices/authentication_service.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const ImageIcon(
                const AssetImage("assets/BottomAppBarIcons/back.png"),
              ),
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: themeColor,
      ),
      //two column for profile
      body: Container(
        height: 460,
        margin: const EdgeInsets.fromLTRB(30, 30, 30, 80),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.red,
                    /*child: Image.asset(
                      "assets/images/jennifer.png",
                    ),*/
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Jennifer",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(@jennifer123)",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff8D8D8D)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Berlin, Germany",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            Container(
              height: 370,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  AspectRatio(
                    aspectRatio: 12,
                    child: RaisedButton(
                      onPressed: () {},
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                      color: const Color(0xffC4C4C4),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AspectRatio(
                    aspectRatio: 12,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            Text(
                              'My trips',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            ImageIcon(
                              AssetImage(
                                  "assets/BottomAppBarIcons/greaterThan.png"),
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 12,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            Text(
                              'Reviews',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            ImageIcon(
                              AssetImage(
                                  "assets/BottomAppBarIcons/greaterThan.png"),
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 12,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            Text(
                              'Notifications',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            ImageIcon(
                              AssetImage(
                                  "assets/BottomAppBarIcons/greaterThan.png"),
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  AspectRatio(
                    aspectRatio: 12,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            ImageIcon(
                              AssetImage(
                                  "assets/BottomAppBarIcons/greaterThan.png"),
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 12,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            Text(
                              'Term of use',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            ImageIcon(
                              AssetImage(
                                  "assets/BottomAppBarIcons/greaterThan.png"),
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 12,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            Text(
                              'About us',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            ImageIcon(
                              AssetImage(
                                  "assets/BottomAppBarIcons/greaterThan.png"),
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Sign out Button
                  AspectRatio(
                    aspectRatio: 12,
                    child: RaisedButton(
                      onPressed: () async {
                        await context.read<AuthenticationService>().signOut();
                      },
                      child: const Text(
                        'Sign out',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                      color: const Color(0xffC4C4C4),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      //Navigation Bar
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
