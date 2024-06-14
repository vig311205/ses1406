class RestaurantModel {
  String name;
  String cuisine;
  final FoodTypes typeOfFoodOffered;
  int minimumAmount;
  double userRating;
  bool isFav;
  String imageUrl;

  RestaurantModel({
    required this.typeOfFoodOffered,
    required this.name,
    required this.cuisine,
    required this.isFav,
    required this.minimumAmount,
    required this.userRating,
    required this.imageUrl,
  });
}

enum FoodTypes { veg, nonveg, vegan }
