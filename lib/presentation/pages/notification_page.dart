// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../size_config.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool pushNotificationBtn = true;
  bool textMessgBtn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF9F9FF),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/arrow_back_icon.svg",
          ),
        ),
      ),
      body: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(70)),
              Text(
                "Notifications",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(34),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Please select at least one notification \nchannel for your rides.",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: Color(0xFF201B19).withOpacity(.6),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Push notifications",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(20),
                  color: Color(0xFF201B19),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rides",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      color: Color(0xFF201B19).withOpacity(.6),
                    ),
                  ),
                  Switch.adaptive(
                    value: pushNotificationBtn,
                    activeColor: Color(0xFFF24A40),
                    onChanged: (val) {
                      setState(() {
                        pushNotificationBtn = val;
                      });
                    },
                  ),
                ],
              ),
              Text(
                "Ride status, rate the ride",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: Color(0xFF201B19).withOpacity(.6),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Text messages",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(20),
                  color: Color(0xFF201B19),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rides",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      color: Color(0xFF201B19).withOpacity(.6),
                    ),
                  ),
                  Switch.adaptive(
                    value: textMessgBtn,
                    activeColor: Color(0xFFF24A40),
                    onChanged: (val) {
                      setState(() {
                        textMessgBtn = val;
                      });
                    },
                  ),
                ],
              ),
              Text(
                "Ride status, rate the ride",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: Color(0xFF201B19).withOpacity(.6),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Ride status updates are also always sent \nvia email.",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: Color(0xFF201B19).withOpacity(.6),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
