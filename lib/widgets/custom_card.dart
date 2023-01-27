import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, this.icon, required this.text}) : super(key: key);
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
              Icon(
                icon,
                color: colorForStatus ? Colors.green : Colors.white,
                size: checkStatus ? 12 : 22,
              ),
              SizedBox(
                width: 18,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 16),
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
