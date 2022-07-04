// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ugks_limousine_app/presentation/pages/payment_continue_page.dart';
import 'package:ugks_limousine_app/presentation/widgets/input_field_widget.dart';

import '../../size_config.dart';

class AnOptionalInfoPage extends StatelessWidget {
  const AnOptionalInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add optional info",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.w400,
            color: Color(0xFF201B19),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(20)),
                child: Column(
                  children: [
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Text(
                      "Enter your flight number to ensure your chauffeur \nis waiting, even if your flight is delayed.",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF201B19).withOpacity(.7),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenHeight(10)),
                      child: Column(
                        children: [
                          InputFieldWidget(
                            title: "FLIGHT NUMBER",
                            suffixIcon: null,
                            inputType: TextInputType.text,
                            bordRadius: 3,
                          ),
                          SizedBox(height: getProportionateScreenHeight(40)),
                          InputFieldWidget(
                            title: "PICKUP SIGN",
                            suffixIcon: null,
                            inputType: TextInputType.text,
                            bordRadius: 3,
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          InputFieldWidget(
                            title: "NOTES FOR THE CAUFFEUR",
                            suffixIcon: null,
                            inputType: TextInputType.text,
                            bordRadius: 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Text(
                      "Add special requests or relevant info, e.g. child \nseats, number of bags, itinerary for an hourly \nbooking, etc. Please do not include confidential \ninformation.",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF201B19).withOpacity(.7),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenHeight(20)),
                      child: Column(
                        children: [
                          SizedBox(height: getProportionateScreenHeight(20)),
                          InputFieldWidget(
                            title: "BOOK FOR SOMEONE ELSE",
                            suffixIcon: null,
                            inputType: TextInputType.text,
                            bordRadius: 3,
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          InputFieldWidget(
                            title: "REFERENCE NUMBER",
                            suffixIcon: null,
                            inputType: TextInputType.text,
                            bordRadius: 3,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Text(
                      "The reference number appears on your invoice",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF201B19).withOpacity(.7),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentContinuePage(),
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
        ),
      ),
    );
  }
}
