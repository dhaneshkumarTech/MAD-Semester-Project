import 'package:flutter/material.dart';
import 'package:itour_planner/Models/trip_hotels_details_model.dart';

import 'hotel_detail.dart';

class HotelsTabBarView extends StatefulWidget {
  const HotelsTabBarView({Key? key}) : super(key: key);

  @override
  State<HotelsTabBarView> createState() => _HotelsTabBarViewState();
}

class _HotelsTabBarViewState extends State<HotelsTabBarView> {
  // ignore: non_constant_identifier_names
  final List<TripHotelsDetailsModel> _TripHotelsDetails = [
    TripHotelsDetailsModel(
      [
        'assets/PlanPics/sarena.png',
        'assets/PlanPics/centuarus.png',
        "assets/PlanPics/sarena.png",
        'assets/PlanPics/faisalmosque.png',
      ],
      "Islamabad Sarena Hotel",
      "Sponsered",
      "1.3k",
      "Deluxe, Double Bed",
      2,
      3,
      7800,
      1350,
      3,
    ),
    TripHotelsDetailsModel(
      [
        'assets/PlanPics/chatel.png',
        'assets/PlanPics/faisalmosque.png',
        "assets/PlanPics/centuarus.png",
        'assets/PlanPics/faisalmosque.png',
      ],
      "Chalet Hotel Islamabad",
      "Sponsered",
      "1.3k",
      "Executive, Double Bed",
      3,
      4,
      14500,
      3400,
      6,
    ),
    TripHotelsDetailsModel(
      [
        'assets/PlanPics/chatel.png',
        'assets/PlanPics/faisalmosque.png',
        "assets/PlanPics/centuarus.png",
        'assets/PlanPics/faisalmosque.png',
      ],
      "Chalet Hotel Islamabad",
      "Sponsered",
      "1.3k",
      "Executive, Double Bed",
      3,
      4,
      14500,
      3400,
      6,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _TripHotelsDetails.length,
        itemBuilder: (context, index) => HotelDetails(
          _TripHotelsDetails[index].images,
          _TripHotelsDetails[index].hotelName,
          _TripHotelsDetails[index].hotelType,
          _TripHotelsDetails[index].reviews,
          _TripHotelsDetails[index].roomType,
          _TripHotelsDetails[index].totalNights,
          _TripHotelsDetails[index].totalAdults,
          _TripHotelsDetails[index].hotelRent,
          _TripHotelsDetails[index].discount,
          _TripHotelsDetails[index].availableRooms,
          () {},
        ),
      ),
    );
  }
}
