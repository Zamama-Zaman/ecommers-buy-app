// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ugks_limousine_app/presentation/widgets/input_field_widget.dart';
import 'package:ugks_limousine_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCraditCardPage extends StatelessWidget {
  const AddCraditCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF9F9FF),
        elevation: 0.0,
        title: Text(
          "ADD CREDIT CARD",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(22),
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/icons/arrow_back_icon.svg"),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            InputFieldWidget(
              title: "FULL NAME",
              suffixIcon: null,
              inputType: TextInputType.name,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            InputFieldWidget(
              title: "CARD NUMBER",
              suffixIcon: "assets/icons/payment_methond_icon.svg",
              inputType: TextInputType.name,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            InputFieldWidget(
              title: "EXPIRATION DATE",
              suffixIcon: null,
              inputType: TextInputType.datetime,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            InputFieldWidget(
              title: "CVV",
              suffixIcon: null,
              inputType: TextInputType.datetime,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/visa_image.png",
                  width: getProportionateScreenWidth(49),
                  height: getProportionateScreenHeight(35.2),
                ),
                Image.asset(
                  "assets/images/card_image.png",
                  width: getProportionateScreenWidth(49),
                  height: getProportionateScreenHeight(35.2),
                ),
                Image.asset(
                  "assets/images/apple_pay_image.png",
                  width: getProportionateScreenWidth(49),
                  height: getProportionateScreenHeight(35.2),
                ),
              ],
            ),
            Spacer(),
            Container(
              height: getProportionateScreenHeight(60),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF24A40),
              ),
              alignment: Alignment.center,
              child: Text(
                "ADD CREDIT CARD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: getProportionateScreenWidth(22),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),

            // width: 330,
          ],
        ),
      ),
    );
  }
}
