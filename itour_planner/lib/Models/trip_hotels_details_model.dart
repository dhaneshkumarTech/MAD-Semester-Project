class TripHotelsDetailsModel {
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


  TripHotelsDetailsModel(
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
}
