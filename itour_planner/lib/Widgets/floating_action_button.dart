import 'package:flutter/material.dart';

class FloatingActionButtonContainer extends StatelessWidget {
  const FloatingActionButtonContainer({Key? key}) : super(key: key);

  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      width: 60.0,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        splashColor: themeColor.withOpacity(0.2),
        onPressed: () {},
        child: Image.asset(
          "assets/BottomAppBarIcons/plane.png",
        ),
        elevation: 6.0,
      ),
    );
  }
}
