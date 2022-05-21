import 'dart:convert';

import 'package:flutter/foundation.dart';

class SightsList {
  List sights = [];
  SightsList({
    required this.sights,
  });
  
}

class SightsModel {
  final String sight_name;
  final String sight_address;
  final String sight_city;
  final String sight_region;
  final String sight_category;
  final String sight_map_location;
  final String sight_closing_hours;
  final String sight_opening_hours;
  final String sight_description;
  final String sight_type;
  final List<String> sight_images;

  // constructor
  SightsModel(
    this.sight_name,
    this.sight_address,
    this.sight_city,
    this.sight_region,
    this.sight_category,
    this.sight_map_location,
    this.sight_closing_hours,
    this.sight_opening_hours,
    this.sight_description,
    this.sight_type,
    this.sight_images,
  );

  SightsModel copyWith({
    String? sight_name,
    String? sight_address,
    String? sight_city,
    String? sight_region,
    String? sight_category,
    String? sight_map_location,
    String? sight_closing_hours,
    String? sight_opening_hours,
    String? sight_description,
    String? sight_type,
    List<String>? sight_images,
  }) {
    return SightsModel(
      sight_name ?? this.sight_name,
      sight_address ?? this.sight_address,
      sight_city ?? this.sight_city,
      sight_region ?? this.sight_region,
      sight_category ?? this.sight_category,
      sight_map_location ?? this.sight_map_location,
      sight_closing_hours ?? this.sight_closing_hours,
      sight_opening_hours ?? this.sight_opening_hours,
      sight_description ?? this.sight_description,
      sight_type ?? this.sight_type,
      sight_images ?? this.sight_images,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'sight_name': sight_name});
    result.addAll({'sight_address': sight_address});
    result.addAll({'sight_city': sight_city});
    result.addAll({'sight_region': sight_region});
    result.addAll({'sight_category': sight_category});
    result.addAll({'sight_map_location': sight_map_location});
    result.addAll({'sight_closing_hours': sight_closing_hours});
    result.addAll({'sight_opening_hours': sight_opening_hours});
    result.addAll({'sight_description': sight_description});
    result.addAll({'sight_type': sight_type});
    result.addAll({'sight_images': sight_images});

    return result;
  }

  factory SightsModel.fromMap(Map<String, dynamic> map) {
    return SightsModel(
      map['sight_name'] ?? '',
      map['sight_address'] ?? '',
      map['sight_city'] ?? '',
      map['sight_region'] ?? '',
      map['sight_category'] ?? '',
      map['sight_map_location'] ?? '',
      map['sight_closing_hours'] ?? '',
      map['sight_opening_hours'] ?? '',
      map['sight_description'] ?? '',
      map['sight_type'] ?? '',
      List<String>.from(map['sight_images']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SightsModel.fromJson(String source) =>
      SightsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SightsModel(sight_name: $sight_name, sight_address: $sight_address, sight_city: $sight_city, sight_region: $sight_region, sight_category: $sight_category, sight_map_location: $sight_map_location, sight_closing_hours: $sight_closing_hours, sight_opening_hours: $sight_opening_hours, sight_description: $sight_description, sight_type: $sight_type, sight_images: $sight_images)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SightsModel &&
        other.sight_name == sight_name &&
        other.sight_address == sight_address &&
        other.sight_city == sight_city &&
        other.sight_region == sight_region &&
        other.sight_category == sight_category &&
        other.sight_map_location == sight_map_location &&
        other.sight_closing_hours == sight_closing_hours &&
        other.sight_opening_hours == sight_opening_hours &&
        other.sight_description == sight_description &&
        other.sight_type == sight_type &&
        listEquals(other.sight_images, sight_images);
  }

  @override
  int get hashCode {
    return sight_name.hashCode ^
        sight_address.hashCode ^
        sight_city.hashCode ^
        sight_region.hashCode ^
        sight_category.hashCode ^
        sight_map_location.hashCode ^
        sight_closing_hours.hashCode ^
        sight_opening_hours.hashCode ^
        sight_description.hashCode ^
        sight_type.hashCode ^
        sight_images.hashCode;
  }
}
