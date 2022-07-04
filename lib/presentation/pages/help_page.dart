// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(100)),
              Text(
                "Help",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(34),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Card(
                margin: EdgeInsets.zero,
                child: Container(
                  height: getProportionateScreenHeight(56),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  color: Colors.white,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Help Center",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(
                        16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Contact us",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(
                    20,
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Card(
                margin: EdgeInsets.zero,
                child: SizedBox(
                  height: getProportionateScreenHeight(216),
                  width: getProportionateScreenWidth(330),
                  child: Column(
                    children: [
                      ...List.generate(
                        _contactUsList.length,
                        (index) {
                          return Column(
                            children: [
                              Container(
                                height: getProportionateScreenHeight(54),
                                width: getProportionateScreenWidth(330),
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: getProportionateScreenWidth(20)),
                                    SvgPicture.asset(
                                      _contactUsList[index].image,
                                      width: getProportionateScreenWidth(20),
                                      height: getProportionateScreenHeight(28),
                                    ),
                                    SizedBox(
                                        width: getProportionateScreenWidth(10)),
                                    Text(
                                      _contactUsList[index].name,
                                      style: TextStyle(
                                        fontSize: getProportionateScreenWidth(
                                          16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 0,
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "Legal",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(
                    20,
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Card(
                margin: EdgeInsets.zero,
                child: SizedBox(
                  height: getProportionateScreenHeight(162),
                  width: getProportionateScreenWidth(330),
                  child: Column(
                    children: [
                      ...List.generate(
                        _legalList.length,
                        (index) {
                          return Column(
                            children: [
                              Container(
                                height: getProportionateScreenHeight(54),
                                width: getProportionateScreenWidth(330),
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: getProportionateScreenWidth(20)),
                                    Text(
                                      _legalList[index].name,
                                      style: TextStyle(
                                        fontSize: getProportionateScreenWidth(
                                          16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 0,
                              ),
                            ],
                          );
                        },
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

class ContactUsClass {
  final String name;
  final String image;

  ContactUsClass({required this.name, required this.image});
}

List<ContactUsClass> _contactUsList = [
  ContactUsClass(name: "Via Chat", image: "assets/icons/chat_icon.svg"),
  ContactUsClass(name: "US + 2454811311", image: "assets/icons/phone_icon.svg"),
  ContactUsClass(name: "US + 2454811311", image: "assets/icons/phone_icon.svg"),
  ContactUsClass(name: "US + 2454811311", image: "assets/icons/phone_icon.svg"),
];

class LegalClass {
  final String name;

  LegalClass({required this.name});
}

List<LegalClass> _legalList = [
  LegalClass(name: "Imprint"),
  LegalClass(name: "Term & conditions"),
  LegalClass(name: "Private Policy"),
];
