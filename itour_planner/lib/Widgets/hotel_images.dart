import 'package:flutter/material.dart';

class HotelImages extends StatelessWidget {
  final String image;
  const HotelImages(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Image.asset(
      image,
      width: 420,
      fit: BoxFit.fill,
    );
  }
}
