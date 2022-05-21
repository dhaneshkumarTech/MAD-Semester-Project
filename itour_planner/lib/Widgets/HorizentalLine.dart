import 'package:flutter/material.dart';

class HorizentalLineDivider extends StatelessWidget {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  const HorizentalLineDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 2,
      indent: 20,
      endIndent: 20,
      color: Color.fromARGB(255, 160, 137, 137),
      height: 15,
    );
  }
}
