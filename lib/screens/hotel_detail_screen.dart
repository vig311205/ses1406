// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image(
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.low,
            image: AssetImage(
              widget.hotel.imageUrl,
            ),
          ),
          Text(
            widget.hotel.cuisine,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "₹" + widget.hotel.minimumAmount.toString(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, inx) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.hotel.menu[inx].dishName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          widget.hotel.menu[inx].ratings.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          "₹" + widget.hotel.menu[inx].price.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                        Wrap(
                          spacing: 8,
                          runSpacing: 4,
                          alignment: WrapAlignment.end,
                          children: widget.hotel.menu[inx].ingridients
                              .map((e) => Chip(label: Text(e)))
                              .toList(),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 130,
                    child: ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(16),
                      child: ListView.separated(
                        physics: const PageScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: widget.hotel.menu[inx].images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Image.network(
                            height: 100,
                            width: 130,
                            widget.hotel.menu[inx].images[index],
                            fit: BoxFit.cover,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 8,
                          );
                        },
                      ),
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 16,
              );
            },
            itemCount: widget.hotel.menu.length,
          ),
        ],
      ),
    );
  }
}
