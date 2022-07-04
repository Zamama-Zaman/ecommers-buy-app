// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ugks_limousine_app/presentation/pages/choose_vechile_class_page.dart';
import 'package:ugks_limousine_app/presentation/widgets/input_field_widget.dart';
import 'package:ugks_limousine_app/presentation/widgets/input_field_widget_2.dart';
import 'package:ugks_limousine_app/size_config.dart';

class BookARideOneWayPage extends StatefulWidget {
  const BookARideOneWayPage({Key? key}) : super(key: key);

  @override
  State<BookARideOneWayPage> createState() => _BookARideOneWayPageState();
}

class _BookARideOneWayPageState extends State<BookARideOneWayPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF9F9FF),
        title: Text(
          "Book a ride",
          style: TextStyle(
            color: Color(0xFF201B19),
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(
            Icons.close,
            color: Color(0xFF201B19),
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                "assets/images/google_map_image.jpg",
                fit: BoxFit.fill,
                width: double.infinity,
                height: getProportionateScreenHeight(450),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 298,
              width: getProportionateScreenWidth(375),
              decoration: BoxDecoration(
                color: Color(0xFFF9F9FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20)),
                    child: Column(
                      children: [
                        SizedBox(height: getProportionateScreenHeight(15)),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    index = 0;
                                  });
                                },
                                child: Container(
                                  height: getProportionateScreenHeight(50),
                                  color: Colors.transparent,
                                  child: Column(
                                    children: [
                                      Text(
                                        "One way",
                                        style: TextStyle(
                                          fontSize:
                                              getProportionateScreenWidth(18),
                                          color: index == 0
                                              ? Color(0xFF201B19)
                                              : Color(0xFF201B19)
                                                  .withOpacity(.5),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 2,
                                        width: double.infinity,
                                        color: index == 0
                                            ? Color(0xFF201B19)
                                            : Color(0xFFD9D9D9),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    index = 1;
                                  });
                                },
                                child: Container(
                                  height: getProportionateScreenHeight(50),
                                  color: Colors.transparent,
                                  child: Column(
                                    children: [
                                      Text(
                                        "By the hour",
                                        style: TextStyle(
                                          fontSize:
                                              getProportionateScreenWidth(18),
                                          color: index == 1
                                              ? Color(0xFF201B19)
                                              : Color(0xFF201B19)
                                                  .withOpacity(.5),
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 2,
                                        width: double.infinity,
                                        color: index == 1
                                            ? Color(0xFF201B19)
                                            : Color(0xFFD9D9D9),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        index == 0 ? OneWayWidget() : BuyHourWidget(),
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseVechileClassPage(),
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
        ],
      ),
    );
  }
}

class OneWayWidget extends StatelessWidget {
  const OneWayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenHeight(15)),
        InputFieldWidget2(
          color: Color(0xFFFF5B5B),
          title: "Pickup",
        ),
        SizedBox(height: getProportionateScreenHeight(15)),
        InputFieldWidget2(
          color: Color(0xFF1BAA90),
          title: "Dropoff",
        ),
        SizedBox(height: getProportionateScreenHeight(15)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pickup time",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: Color(0xFF201B19).withOpacity(.7),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenHeight(5),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xFF201B19).withOpacity(.7),
                ),
              ),
              child: Text(
                "21.Jun 2022",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: Color(0xFF201B19).withOpacity(.7),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenHeight(5),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xFF201B19).withOpacity(.7),
                ),
              ),
              child: Text(
                "9.30 pm",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: Color(0xFF201B19).withOpacity(.7),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BuyHourWidget extends StatelessWidget {
  const BuyHourWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getProportionateScreenHeight(15)),
        InputFieldWidget2(
          color: Color(0xFFFF5B5B),
          title: "Pickup",
        ),
        SizedBox(height: getProportionateScreenHeight(15)),
        InputFieldWidget(
          title: "Duration",
          inputType: TextInputType.text,
          bordRadius: 5,
          suffixIcon: null,
        ),
        SizedBox(height: getProportionateScreenHeight(15)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pickup time",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: Color(0xFF201B19).withOpacity(.7),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenHeight(5),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xFF201B19).withOpacity(.7),
                ),
              ),
              child: Text(
                "21.Jun 2022",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: Color(0xFF201B19).withOpacity(.7),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenHeight(5),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xFF201B19).withOpacity(.7),
                ),
              ),
              child: Text(
                "9.30 pm",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: Color(0xFF201B19).withOpacity(.7),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
