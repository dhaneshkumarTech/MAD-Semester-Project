import 'package:flutter/material.dart';

class ImagePickerButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onClicked;
  const ImagePickerButton(
      {required this.title,
      required this.icon,
      required this.onClicked,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 80,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(56),
          primary: Colors.white,
          onPrimary: Colors.black,
          side: const BorderSide(
            color: Color.fromRGBO(173, 37, 51, 1),
          ),
          textStyle: const TextStyle(
            fontSize: 20,
          ),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: 28,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(title),
          ],
        ),
        onPressed: onClicked,
      ),
    );
  }
}
