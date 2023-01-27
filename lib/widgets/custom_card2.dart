
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  CustomCard2({super.key, required this.text, required this.secondaryText, this.onTap});
  late String text;
  late String secondaryText;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
          Row(
            children: [
              Text(
                secondaryText,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: Colors.white38,
              )
            ],
          )
        ],
      ),
    );
  }
}
