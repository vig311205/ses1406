class RestaurantModel {
  String name;
  String cuisine;
  final FoodTypes typeOfFoodOffered;
  int minimumAmount;
  double userRating;
  bool isFav;
  String imageUrl;
  // Collection of menu items
  List<MenuItem> menu;

  RestaurantModel({
    required this.typeOfFoodOffered,
    required this.name,
    required this.cuisine,
    required this.isFav,
    required this.minimumAmount,
    required this.userRating,
    required this.imageUrl,
    required this.menu
  });
}

enum FoodTypes { veg, nonveg, vegan }

class MenuItem {
  String dishName;
  double price;
  double ratings;
  final List<String> ingridients;
  final List<String> images;

  MenuItem({
    required this.dishName,
    required this.price,
    required this.ratings,
    required this.ingridients,
    required this.images,
  });
}
