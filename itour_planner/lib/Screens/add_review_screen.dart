import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:itour_planner/Widgets/bottom_navigation_bar.dart';
import 'package:itour_planner/Widgets/floating_action_button.dart';
import '../Widgets/image_picker_button.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({Key? key}) : super(key: key);

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Review'),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {},
        ),
        backgroundColor: themeColor,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImagePickerButton(
                    title: 'Add Photo',
                    icon: Icons.image_outlined,
                    onClicked: () {},
                  ),
                  ImagePickerButton(
                    title: 'Camera',
                    icon: Icons.camera_alt_outlined,
                    onClicked: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Fortress',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Rate this Place',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(0),
              child: RatingBar.builder(
                itemSize: 30,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 0.1),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: themeColor,
                ),
                onRatingUpdate: (rating) {},
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    cursorColor: themeColor,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: themeColor,
                        ),
                      ),
                      hintText: 'Enter Review Title',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Review Description',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 110,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: themeColor,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      autocorrect: true,
                      cursorColor: themeColor,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Review Description',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  primary: const Color.fromRGBO(173, 37, 51, 1),
                  onPrimary: Colors.white,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text(
                  'SAVE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButtonContainer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: const BottomNavigationBarContainer(),
    );
  }
}
