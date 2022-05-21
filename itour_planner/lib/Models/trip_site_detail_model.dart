class TripSitesDetailsModel {
  final List<String> images;
  final String siteName;
  final String siteType;
  final String siteReviews;
  final int duration;
  final int openingHours;
  final int closingHours;
  final String address;

  TripSitesDetailsModel(this.images, this.siteName, this.siteType,
      this.siteReviews, this.duration, this.openingHours, this.closingHours, this.address);
}
