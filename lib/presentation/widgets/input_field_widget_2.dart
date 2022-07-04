// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../size_config.dart';

class InputFieldWidget2 extends StatelessWidget {
  final String title;
  final Color color;
  const InputFieldWidget2({
    Key? key,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0xFF201B19).withOpacity(.5),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(10)),
          Expanded(
            child: Container(
              height: getProportionateScreenHeight(63),
              width: double.infinity,
              color: Colors.transparent,
              alignment: Alignment.center,
              child: TextFormField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: title,
                  hintStyle: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
