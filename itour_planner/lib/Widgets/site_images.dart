import 'package:flutter/material.dart';

class SiteImages extends StatelessWidget {
  final String image;

  const SiteImages(this.image, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 420,
      fit: BoxFit.fill,
    );
    ;
  }
}
