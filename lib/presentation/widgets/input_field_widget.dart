// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputFieldWidget extends StatelessWidget {
  final String title;
  final String? suffixIcon;
  final TextInputType inputType;
  final double? bordRadius;
  const InputFieldWidget({
    Key? key,
    required this.title,
    required this.suffixIcon,
    required this.inputType,
    this.bordRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 330,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius:
            BorderRadius.circular(bordRadius == null ? 0 : bordRadius!),
        border: Border.all(
          color: Color(0xFF201B19).withOpacity(.5),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFF201B19).withOpacity(.3),
                  ),
                ),
                Container(
                  height: 25,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: TextFormField(
                    keyboardType: inputType,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
          suffixIcon == null ? SizedBox() : SvgPicture.asset(suffixIcon!),
        ],
      ),
    );
  }
}
