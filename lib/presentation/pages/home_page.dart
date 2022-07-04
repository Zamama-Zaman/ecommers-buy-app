// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ugks_limousine_app/presentation/pages/book_a_ride_one_way_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 299,
              height: 100,
              color: Colors.transparent,
              child: Text(
                "Your global chauffeur service",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookARideOneWayPage(),
                  ),
                );
              },
              child: Container(
                height: 53,
                width: 299,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFF24A40),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Book a ride",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              "assets/images/car_image.png",
              width: 386,
              height: 210,
            ),
          ],
        ),
      ),
    );
  }
}
