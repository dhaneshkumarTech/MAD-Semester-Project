import 'package:flutter/material.dart';
import 'package:itour_planner/Models/trip_site_detail_model.dart';
import 'package:itour_planner/Screens/after_filter_screen.dart';


class SiteFilterView extends StatefulWidget {
  const SiteFilterView({Key? key}) : super(key: key);

  @override
  State<SiteFilterView> createState() => _SiteFilterViewState();
}

class _SiteFilterViewState extends State<SiteFilterView> {
  // ignore: non_constant_identifier_names
  final List<TripSitesDetailsModel> _TripHotelsDetails = [
    TripSitesDetailsModel(
      [
        'assets/PlanPics/sarena.png',
        'assets/PlanPics/centuarus.png',
        "assets/PlanPics/sarena.png",
        'assets/PlanPics/faisalmosque.png',
      ],
      "Centrauras",
      "Shoping Mall",
      "1.3k",
      2,
      3,
      7800,
      'I8/1 Blue Area Islamabad'
    ),
    TripSitesDetailsModel(
      [
        'assets/PlanPics/chatel.png',
        'assets/PlanPics/faisalmosque.png',
        "assets/PlanPics/centuarus.png",
        'assets/PlanPics/faisalmosque.png',
      ],
      "Safa Gold Mall ",
      "Shoping Mall",
      "1.3k",
      3,
      4,
      6,
      'I8/1 Blue Area Islamabad'
    ),
        TripSitesDetailsModel(
      [
        'assets/PlanPics/chatel.png',
        'assets/PlanPics/faisalmosque.png',
        "assets/PlanPics/centuarus.png",
        'assets/PlanPics/faisalmosque.png',
      ],
      "Giga Mall ",
      "Shoping",
      "1.3k",
      3,
      4,
      6,
      'I8/1 Blue Area Islamabad'
    ),

    TripSitesDetailsModel(
      [
        'assets/PlanPics/chatel.png',
        'assets/PlanPics/faisalmosque.png',
        "assets/PlanPics/centuarus.png",
        'assets/PlanPics/faisalmosque.png',
      ],
      "CSD Mall ",
      "Shoping",
      "1.3k",
      3,
      4,
      6,
      'I8/1 Blue Area Islamabad'
    ),

    TripSitesDetailsModel(
      [
        'assets/PlanPics/chatel.png',
        'assets/PlanPics/faisalmosque.png',
        "assets/PlanPics/centuarus.png",
        'assets/PlanPics/faisalmosque.png',
      ],
      "Safa Gold Mall ",
      "Shoping Mall",
      "1.3k",
      3,
      4,
      6,
      'I8/1 Blue Area Islamabad'
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
          itemBuilder: (context, index) =>  AfterFilterScreen(
                _TripHotelsDetails[index].images,
                _TripHotelsDetails[index].siteName,
                _TripHotelsDetails[index].siteType,
                _TripHotelsDetails[index].siteReviews,
                _TripHotelsDetails[index].duration,
                _TripHotelsDetails[index].openingHours,
                _TripHotelsDetails[index].closingHours,
              )),
    );
  }
}
