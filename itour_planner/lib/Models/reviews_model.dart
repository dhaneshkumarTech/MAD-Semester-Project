import 'package:cloud_firestore/cloud_firestore.dart';

class ReviewsModel {
  final Timestamp review_date;
  final String review_title;
  final String review_description;
  final num review_stars;
  final List<String> review_images;
  final String reviewer;

  ReviewsModel(this.review_date, this.review_title, this.review_description, this.review_stars, this.review_images, this.reviewer);
  
}
