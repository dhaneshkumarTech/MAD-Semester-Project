import 'package:flutter/material.dart';

class CategoriesButton extends StatelessWidget {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final String icon;
  final String text;

  const CategoriesButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      child: ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(242, 124, 136, 0.7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        label: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        icon: Image.asset(
          icon,
          color: themeColor,
        ),
      ),
    );
  }
}
