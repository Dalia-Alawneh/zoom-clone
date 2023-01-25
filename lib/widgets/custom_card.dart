import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,this.icon, required this.text
  }) : super(key: key);
  final text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 18,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 17),
              )
            ],
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
