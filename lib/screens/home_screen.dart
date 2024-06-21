// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ses1406/model/restaurant_model.dart';
import 'package:ses1406/screens/hotel_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var allRes = [
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.nonveg,
        name: "Pattukotai Mess",
        cuisine: "Multi Cuisine",
        isFav: false,
        minimumAmount: 100,
        userRating: 4.3,
        imageUrl: "assests/images/food/image1.jpg",
        menu: [
          MenuItem(
            dishName: "Idili pattukotai",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          ),
          MenuItem(
            dishName: "Dosa",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpg",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          ),
          MenuItem(
            dishName: "Omlet",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpg",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          ),
          MenuItem(
            dishName: "Vada",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpg",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          ),
          MenuItem(
            dishName: "Poori",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpg",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          ),
          MenuItem(
            dishName: "Pongal",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpg",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          ),
          MenuItem(
            dishName: "Kalli",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpg",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          ),
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.veg,
        name: "Geetham",
        cuisine: "Indian",
        isFav: true,
        minimumAmount: 200,
        userRating: 4.5,
        imageUrl: "assests/images/food/image2.jpg",
        menu: [
          MenuItem(
            dishName: "Idili geetham",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpgF",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          )
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.nonveg,
        name: "Spice Garden",
        cuisine: "Chinese",
        isFav: false,
        minimumAmount: 120,
        userRating: 4.0,
        imageUrl: "assests/images/food/image3.jpg",
        menu: [
          MenuItem(
            dishName: "Idili",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpgF",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          )
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.veg,
        name: "A2B",
        cuisine: "Healthy",
        isFav: true,
        minimumAmount: 200,
        userRating: 4.8,
        imageUrl: "assests/images/food/image4.jpg",
        menu: [
          MenuItem(
            dishName: "Idili",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpgF",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          )
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.nonveg,
        name: "Anjapaar",
        cuisine: "South Indian",
        isFav: false,
        minimumAmount: 300,
        userRating: 4.2,
        imageUrl: "assests/images/food/image5.jpg",
        menu: [
          MenuItem(
            dishName: "Idili",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpgF",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          )
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.veg,
        name: "Thallu vandi",
        cuisine: "Street Food",
        isFav: true,
        minimumAmount: 15,
        userRating: 5,
        imageUrl: "assests/images/food/image6.jpg",
        menu: [
          MenuItem(
            dishName: "Idili",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpgF",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          )
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.veg,
        name: "Kerala mess",
        cuisine: "Kerala",
        isFav: true,
        minimumAmount: 200,
        userRating: 4.4,
        imageUrl: "assests/images/food/image7.jpg",
        menu: [
          MenuItem(
            dishName: "Idili",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpgF",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          )
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.nonveg,
        name: "Seafood Shack",
        cuisine: "Seafood",
        isFav: true,
        minimumAmount: 180,
        userRating: 4.7,
        imageUrl: "assests/images/food/image8.jpg",
        menu: [
          MenuItem(
            dishName: "Idili",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpgF",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          )
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.nonveg,
        name: "Biryani Bazaar",
        cuisine: "Hyderabadi",
        isFav: false,
        minimumAmount: 160,
        userRating: 4.1,
        imageUrl: "assests/images/food/image9.jpg",
        menu: [
          MenuItem(
            dishName: "Idili",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpgF",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          )
        ]),
    RestaurantModel(
        typeOfFoodOffered: FoodTypes.veg,
        name: "Pattukotai mess",
        cuisine: "Multi cuisine",
        isFav: true,
        minimumAmount: 120,
        userRating: 4.9,
        imageUrl: "assests/images/food/image10.jpg",
        menu: [
          MenuItem(
            dishName: "Idili",
            price: 30,
            ratings: 5,
            ingridients: ['Rice', 'Urad dal', 'Salt', 'oil'],
            images: [
              "https://www.indianhealthyrecipes.com/wp-content/uploads/2022/04/idli-recipe.jpgF",
              "https://images.unsplash.com/photo-1589301760014-d929f3979dbc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ],
          )
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toomato"),
      ),
      body: ListView.separated(
        itemBuilder: (ctx, inx) {
          return GestureDetector(
            onTap: () {
              print("*********");
              print(allRes[inx].name);
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (stx) {
                    return HotelScreen(
                      hotel: allRes[inx],
                    );
                  },
                ),
              );
            },
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image(
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.low,
                        image: AssetImage(
                          allRes[inx].imageUrl,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.black.withOpacity(0.4),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: allRes[inx].isFav
                              ? const Icon(
                                  Icons.favorite_rounded,
                                  color: Colors.pinkAccent,
                                )
                              : const Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.white,
                                ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          allRes[inx].name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 4),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Text(
                                allRes[inx].userRating.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Icon(
                                size: 10,
                                Icons.star_rounded,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.8,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "40% OFF upto 100",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
        itemCount: allRes.length,
      ),
    );
  }
}
