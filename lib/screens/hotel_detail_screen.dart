// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../model/restaurant_model.dart';

class HotelScreen extends StatefulWidget {
  final RestaurantModel hotel;
  const HotelScreen({required this.hotel, super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.hotel.name),
      ),
      body: Column(
        children: [
          Text(widget.hotel.cuisine),
          Text(widget.hotel.minimumAmount.toString()),
          Image(
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.low,
            image: AssetImage(
              widget.hotel.imageUrl,
            ),
          )
        ],
      ),
    );
  }
}
