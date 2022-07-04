// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ugks_limousine_app/presentation/pages/notification_page.dart';
import 'package:ugks_limousine_app/presentation/pages/payment_page.dart';
import 'package:ugks_limousine_app/presentation/pages/settings_page.dart';
import 'package:ugks_limousine_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/account_image.png"),
              SizedBox(height: getProportionateScreenHeight(20)),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(25),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(10)),
                    Text(
                      "Mr. Khan",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(34),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(40)),
                    ...List.generate(
                      _accountInfoList.length,
                      (index) {
                        return InkWell(
                          splashColor: Colors.transparent,
                          onTap: () => _accountInfoList[index].func(context),
                          child: Column(
                            children: [
                              SizedBox(
                                  height: getProportionateScreenHeight(10)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _accountInfoList[index].name,
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(15),
                                      color: Color(0xFF201B19),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    _accountInfoList[index].image,
                                    width: getProportionateScreenWidth(19),
                                    height: getProportionateScreenHeight(28),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(10)),
                              Divider(),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountInfoClass {
  final String name;
  final String image;
  final Function func;

  AccountInfoClass(
      {required this.name, required this.image, required this.func});
}

List<AccountInfoClass> _accountInfoList = [
  AccountInfoClass(
    name: "Personal information",
    image: "assets/icons/personal_inforamtion_icon.svg",
    func: (context) {},
  ),
  AccountInfoClass(
    name: "Payment method",
    image: "assets/icons/payment_methond_icon.svg",
    func: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PaymentPage(),
        ),
      );
    },
  ),
  AccountInfoClass(
    name: "Notifications",
    image: "assets/icons/notification_icon.svg",
    func: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NotificationPage(),
        ),
      );
    },
  ),
  AccountInfoClass(
    name: "Settings",
    image: "assets/icons/setting_icon.svg",
    func: (context) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SettingsPage(),
        ),
      );
    },
  ),
  AccountInfoClass(
    name: "Logout",
    image: "assets/icons/logout_icon.svg",
    func: (context) {},
  ),
];
