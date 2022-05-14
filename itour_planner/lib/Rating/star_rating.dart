import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final double rating;

  const StarRating({
    Key? key,
    this.rating = 3,
  }) : super(key: key);

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_border,
        color: themeColor,
        size: 14,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: themeColor,
        size: 14,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: themeColor,
        size: 14,
      );
    }
    return InkResponse(
      onTap: () {},
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => buildStar(context, index),
      ),
    );
  }
}
