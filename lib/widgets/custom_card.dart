import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomCard extends StatelessWidget {
  CustomCard({Key? key, this.icon, required this.text, this.onTap})
      : super(key: key);
  final text;
  final icon;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
