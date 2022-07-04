// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ugks_limousine_app/size_config.dart';

class UpcommingPage extends StatelessWidget {
  const UpcommingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/car_icon_2.svg"),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              "You have no upcoming \nrides",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Container(
              width: getProportionateScreenWidth(277),
              height: getProportionateScreenHeight(45),
              alignment: Alignment.center,
              color: Colors.transparent,
              child: Text(
                "As soon as you book a ride, all of your \nrelevant details will be shown here.",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Container(
              height: getProportionateScreenHeight(53),
              width: getProportionateScreenWidth(293),
              color: Color(0xFFF24A40),
              alignment: Alignment.center,
              child: Text(
                "Book a ride",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(22),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
