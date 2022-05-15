import 'package:flutter/material.dart';

import '../BottomNavigationBar/bottom_navigation_bar.dart';
import '../FloatingActionButton/floating_action_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account',
          style: TextStyle(fontSize: 24),
        ),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {},
        ),
        backgroundColor: themeColor,
      ),
      //two column for profile
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 24, 30, 80),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
              height: 360,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 14,
                  ),
                  _MainButton(text: "Edit Profile"),
                  SizedBox(
                    height: 10,
                  ),
                  _SecondaryButton(
                    text: "My trips",
                  ),
                  _SecondaryButton(
                    text: "Reviews",
                  ),
                  _SecondaryButton(
                    text: "Notifications",
                  ),
                  _SecondaryButton(
                    text: "Privacy Policy",
                  ),
                  _SecondaryButton(
                    text: "Term of use",
                  ),
                  _SecondaryButton(
                    text: "About us",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Sign out Button
                  _MainButton(text: "Sign Out"),
                ],
              ),
            ),
          ],
        ),
      ),
      // flaoting Action Active Button
      floatingActionButton: const FloatingActionButtonContainer(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      //Navigation Bar
      bottomNavigationBar: const BottomNavigationBarContainer(),
    );
  }
}

class _MainButton extends StatelessWidget {
  const _MainButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 12,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xffC4C4C4),
          onPrimary: Colors.black,
        ),
      ),
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  const _SecondaryButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 11,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                text,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
