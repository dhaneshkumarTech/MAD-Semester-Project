import 'package:flutter/material.dart';
import 'package:itour_planner/Models/sights_model.dart';
import 'hotel_detail.dart';
import 'site_details.dart';
import 'site_images.dart';

class SitesTabBarView extends StatefulWidget {
  const SitesTabBarView({Key? key}) : super(key: key);

  @override
  State<SitesTabBarView> createState() => _SitesTabBarViewState();
}

class _SitesTabBarViewState extends State<SitesTabBarView> {
  final Color themeColor = const Color.fromRGBO(173, 37, 51, 1);
  final List<SightsModel> _TripSitessDetails = [
    /* SightsModel(
      [
        'assets/PlanPics/centuarus.png',
        "assets/PlanPics/sarena.png",
        'assets/PlanPics/faisalmosque.png',
        'assets/PlanPics/sarena.png',
      ],
      'Centauras',
      'Shoping mall',
      '1.3k',
      4,
      10,
      12,
    ),
    SightsModel(
      [
        'assets/PlanPics/faisalmosque.png',
        'assets/PlanPics/centuarus.png',
        "assets/PlanPics/sarena.png",
        'assets/PlanPics/faisalmosque.png',
        'assets/PlanPics/sarena.png',
      ],
      'Fiasal mosque',
      'Worship place',
      '3.8k',
      1,
      8,
      10,
    ),
    SightsModel(
      [
        "assets/PlanPics/sarena.png",
        'assets/PlanPics/faisalmosque.png',
        'assets/PlanPics/sarena.png',
      ],
      'Marghala Hill',
      'Hills',
      '4.6k',
      4,
      6,
      7,
    ), */
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      /* child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: _TripSitessDetails.length,
          itemBuilder: (context, index) => SiteDetails(
                _TripSitessDetails[index].images,
                _TripSitessDetails[index].siteName,
                _TripSitessDetails[index].siteType,
                _TripSitessDetails[index].siteReviews,
                _TripSitessDetails[index].duration,
                _TripSitessDetails[index].openingHours,
                _TripSitessDetails[index].closingHours,
              )), */
    );
  }
}
