import 'package:flutter/material.dart';
import 'package:itour_planner/Screens/star_rating_screen.dart';
import 'package:itour_planner/Widgets/HorizentalLine.dart';
import 'hotel_images.dart';

class HotelDetails extends StatelessWidget {
  List<String> images;
  String hotelName;
  String hotelType;
  String reviews;
  String roomType;
  int totalNights;
  int totalAdults;
  int hotelRent;
  int discount;
  int availableRooms;

  HotelDetails(
      this.images,
      this.hotelName,
      this.hotelType,
      this.reviews,
      this.roomType,
      this.totalNights,
      this.totalAdults,
      this.hotelRent,
      this.discount,
      this.availableRooms);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Builder(builder: (context) {
        return Column(
          children: [
            Container(
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) => HotelImages(images[index]),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        hotelName,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffB4B5E5),
                        ),
                        child: Text(
                          hotelType,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //reviews to be added
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const StarRating(rating: 3.5),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                      ),
                      Text(
                        '$reviews reviews',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$roomType Room',
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rs. $hotelRent',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text(
                          'X $totalNights nights, $totalAdults adults',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        '$discount',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                                'assets/DashboardImages/Icons/hotels_red.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'only $availableRooms rooms left',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        child: const Text(
                          "view deals",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const HorizentalLineDivider(),
          ],
        );
      }),
    );
  }
}

@override
Widget build(BuildContext context) {
  // ignore: todo
  // TODO: implement build
  throw UnimplementedError();
}
