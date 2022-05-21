import 'package:flutter/material.dart';

class NotificationContainer extends StatelessWidget {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final String dateTime;
  final String description;
  final VoidCallback action;

  const NotificationContainer({Key? key, required this.dateTime, required this.description, required this.action}) : super(key: key);


  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.fromLTRB(5, 5, 5, 10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: themeColor.withOpacity(0.1),
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: const Offset(
                1.0,
                1.0,
              ),
            ),
          ],
          border: const Border(
            bottom: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              dateTime,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                foreground: Paint()..color = themeColor,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
