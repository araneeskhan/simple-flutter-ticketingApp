// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/styles.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.65,
      height: 300,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(13),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromARGB(255, 228, 34, 118),
        //     blurRadius: 2,
        //   ),
        // ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/one.jpg"),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Open Space",
            style: Styles.headLineStyle3
                .copyWith(color: const Color.fromARGB(255, 50, 48, 48)),
          ),
          Text(
            "London",
            style: Styles.headLineStyle4
                .copyWith(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Text(
            "\$50/night",
            style: Styles.headLineStyle4
                .copyWith(color: Color.fromARGB(255, 248, 248, 248)),
          )
        ],
      ),
    );
  }
}
