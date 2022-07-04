// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../size_config.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
          Container(
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
        ],
      ),
    );
  }
}
