import 'package:flutter/material.dart';

class FloatingActionButtonContainer extends StatelessWidget {
  const FloatingActionButtonContainer({Key? key}) : super(key: key);

  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color(0xffFFC107), //background color of button

          shape: RoundedRectangleBorder(
              //to set border radius to button
              borderRadius: BorderRadius.circular(30)),
        ),
        onPressed: () {
        //  showAlertDialog(context);
        },
        child: const Text(
          "Create Trip",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
