import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:itour_planner/Models/trip_site_detail_model.dart';
import 'package:itour_planner/Screens/sites_single_page.dart';
import 'package:itour_planner/Widgets/site_details.dart';

import '../Widgets/food_detail.dart';

class FoodTabBarView extends StatefulWidget {
  const FoodTabBarView({Key? key}) : super(key: key);

  @override
  State<FoodTabBarView> createState() => _FoodTabBarViewState();
}

class _FoodTabBarViewState extends State<FoodTabBarView> {
  // ignore: non_constant_identifier_names
   List<TripSitesDetailsModel> _TripHotelsDetails = [
    TripSitesDetailsModel(
      [
        'assets/PlanPics/sarena.png',
        'assets/PlanPics/centuarus.png',
        "assets/PlanPics/sarena.png",
        'assets/PlanPics/faisalmosque.png',
      ],
      "Chicken Karai",
      "Desi",
      "1.3k",
      2,
      1300,
      7,
      "Shah Faisal Ave, E-8, Islamabad"
    ),
    TripSitesDetailsModel(
      [
        'assets/PlanPics/chatel.png',
        'assets/PlanPics/faisalmosque.png',
        "assets/PlanPics/centuarus.png",
        'assets/PlanPics/faisalmosque.png',
      ],
      "Omelet",
      "Egg",
      "1.3k",
      3,
      4,
      6,
      "Chatel Hotel, F-6, Islamabad"
    ),
        TripSitesDetailsModel(
      [
        'assets/PlanPics/chatel.png',
        'assets/PlanPics/faisalmosque.png',
        "assets/PlanPics/centuarus.png",
        'assets/PlanPics/faisalmosque.png',
      ],
      "Biryani",
      "Egg",
      "1.3k",
      3,
      450,
      6,
      "Chatel Hotel, F-6, Islamabad"
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
          itemBuilder: (context, index) => FoodDetails(
                _TripHotelsDetails[index].images,
                _TripHotelsDetails[index].siteName,
                _TripHotelsDetails[index].siteType,
                _TripHotelsDetails[index].siteReviews,
                _TripHotelsDetails[index].address,
                _TripHotelsDetails[index].openingHours,
                _TripHotelsDetails[index].closingHours,
                (){
                   Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SitesSinglePage(
                    images: _TripHotelsDetails[index].images,
                    siteName: _TripHotelsDetails[index].siteName,
                    siteType: _TripHotelsDetails[index].siteType,
                    siteReviews: _TripHotelsDetails[index].siteReviews,
                    address: _TripHotelsDetails[index].address,
                    duration: _TripHotelsDetails[index].duration,
                 openingHours: _TripHotelsDetails[index].openingHours,
                closingHours: _TripHotelsDetails[index].closingHours,
                  ),
                ),
              );
                }
              )),
    );
  }
}
