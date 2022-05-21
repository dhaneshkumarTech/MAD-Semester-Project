import 'package:flutter/material.dart';

class MainCategoryButton extends StatelessWidget {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);
  const MainCategoryButton({Key? key, required this.icon, required this.text, required this.action})
      : super(key: key);

  final String icon;
  final String text;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 1, right: 1),
      child: OutlinedButton.icon(
        onPressed: action,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: BorderSide(width: 1.0, color: themeColor),
          primary: themeColor,
        ),
        label: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        icon: Image.asset(icon),
      ),
    );
  }
}
