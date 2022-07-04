// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ugks_limousine_app/presentation/pages/add_cradit_card_page.dart';
import 'package:ugks_limousine_app/presentation/pages/home_page.dart';

import '../../size_config.dart';

class PaymentContinuePage extends StatefulWidget {
  const PaymentContinuePage({Key? key}) : super(key: key);

  @override
  State<PaymentContinuePage> createState() => _PaymentContinuePageState();
}

class _PaymentContinuePageState extends State<PaymentContinuePage> {
  bool switchButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF9F9FF),
        automaticallyImplyLeading: false,
        title: Text(
          "Payment",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(30)),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Container(
              height: getProportionateScreenHeight(300),
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(30)),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/dollar_image.png",
                    width: getProportionateScreenWidth(86),
                    height: getProportionateScreenHeight(86),
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  Text(
                    "You have no payment \nmethods",
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
                      "To book your first ride, please add a \npayment method to your account.",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddCraditCardPage(),
                ),
              );
            },
            child: Container(
              height: getProportionateScreenHeight(61),
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(90)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xFFF24A40),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: SvgPicture.asset(
                      "assets/icons/add_icon.svg",
                      width: getProportionateScreenWidth(25),
                      height: getProportionateScreenHeight(25),
                    ),
                  ),
                  Text(
                    "Add payment method",
                    style: TextStyle(
                      color: Color(0xFFF24A40),
                      fontSize: getProportionateScreenWidth(14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            child: Container(
              height: getProportionateScreenHeight(58),
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              color: Color(0xFFF24A40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(22),
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
