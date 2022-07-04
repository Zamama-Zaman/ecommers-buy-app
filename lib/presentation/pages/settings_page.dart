// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool switchButton = false;
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
                "Settings",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(34),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "You can choose between a light or dark display.",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  color: Color(0xFF201B19).withOpacity(.6),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "App Display",
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
                    "Dark theme",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      color: Color(0xFF201B19).withOpacity(.6),
                    ),
                  ),
                  Switch.adaptive(
                    value: switchButton,
                    activeColor: Color(0xFF5F5F5F),
                    onChanged: (val) {
                      setState(() {
                        switchButton = val;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
