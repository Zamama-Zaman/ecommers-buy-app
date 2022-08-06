// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ugks_limousine_app/presentation/pages/canceled_page.dart';
import 'package:ugks_limousine_app/presentation/pages/past_page.dart';
import 'package:ugks_limousine_app/presentation/pages/upcomming_page.dart';
import 'package:ugks_limousine_app/size_config.dart';

class RiderPage extends StatefulWidget {
  const RiderPage({Key? key}) : super(key: key);

  @override
  State<RiderPage> createState() => _RiderPageState();
}

class _RiderPageState extends State<RiderPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> list = [
    Tab(
      // text: "Upcomming",
      child: Text(
        "Upcomming",
        style: TextStyle(
          fontSize: getProportionateScreenWidth(14),
        ),
      ),
    ),
    Tab(
      // text: "Past",
      child: Text(
        "Past",
        style: TextStyle(
          fontSize: getProportionateScreenWidth(15),
        ),
      ),
    ),
    Tab(
      // text: "Canceled",
      child: Text(
        "Canceled",
        style: TextStyle(
          fontSize: getProportionateScreenWidth(15),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Riders",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(34),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(40)),
            SizedBox(
              width: double.infinity,
              child: TabBar(
                controller: _controller,
                tabs: list,
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                unselectedLabelColor: Colors.grey,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Container(
              height: 324,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TabBarView(
                controller: _controller,
                children: [
                  UpcommingPage(),
                  PastPage(),
                  CanceledPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
