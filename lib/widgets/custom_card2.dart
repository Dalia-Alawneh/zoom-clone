import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  CustomCard2({super.key, required this.text, required this.secondaryText});
  late String text;
  late String secondaryText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            width: 170,
          ),
          Text(
            secondaryText,
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Colors.white38,
          )
        ],
      ),
    );
  }
}
