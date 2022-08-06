// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ugks_limousine_app/presentation/pages/an_optional_info_page.dart';
import 'package:ugks_limousine_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseVechileClassPage extends StatelessWidget {
  const ChooseVechileClassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choose a vechile class",
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
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Text(
                      "Business Class",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(24),
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF201B19),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Text(
                      "Mercedes-Benz E-Class or similar",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF201B19).withOpacity(.7),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/person_icon.svg"),
                        SizedBox(width: getProportionateScreenWidth(20)),
                        Text(
                          "max. 3",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF201B19).withOpacity(.7),
                          ),
                        ),
                        SizedBox(width: getProportionateScreenWidth(20)),
                        SvgPicture.asset("assets/icons/purse_icon.svg"),
                        SizedBox(width: getProportionateScreenWidth(20)),
                        Text(
                          "max. 2",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF201B19).withOpacity(.7),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenHeight(20)),
                      child: Image.asset("assets/images/car_image.png"),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "✓ Includes 1 hour of complimentary wait time",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF201B19).withOpacity(.6),
                          ),
                        ),
                        Text(
                          "✓ All-inclusive rates (including Meet & Greet)",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF201B19).withOpacity(.6),
                          ),
                        ),
                        Text(
                          "✓ Free cancellation up until 1 hour before pickup",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF201B19).withOpacity(.6),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(20)),
                        Text(
                          "Learn more",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF0B89FC),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(20)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(10)),
                      child: SizedBox(
                        height: getProportionateScreenHeight(138),
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: _carClassList.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            height: getProportionateScreenHeight(138),
                            width: getProportionateScreenWidth(136),
                            padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(9),
                              vertical: getProportionateScreenHeight(7),
                            ),
                            margin: EdgeInsets.only(
                                right: getProportionateScreenWidth(12)),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Color(0xFFF24A40).withOpacity(.7),
                              ),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  _carClassList[index].image,
                                  width: getProportionateScreenWidth(118),
                                  height: getProportionateScreenHeight(66),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(6)),
                                Text(
                                  _carClassList[index].price,
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(16),
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF201B19),
                                  ),
                                ),
                                SizedBox(
                                    height: getProportionateScreenHeight(6)),
                                Text(
                                  _carClassList[index].name,
                                  style: TextStyle(
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF201B19).withOpacity(.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnOptionalInfoPage(),
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

class CarClasses {
  final String image;
  final String price;
  final String name;

  CarClasses({required this.price, required this.name, required this.image});
}

List<CarClasses> _carClassList = [
  CarClasses(
    price: "35.60 USD",
    name: "Business Class",
    image: "assets/images/car_image.png",
  ),
  CarClasses(
    price: "35.60 USD",
    name: "Business Class",
    image: "assets/images/car_image.png",
  ),
  CarClasses(
    price: "32.60 USD",
    name: "Business Class",
    image: "assets/images/car_image.png",
  ),
];
