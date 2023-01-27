import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ArrowCard extends StatelessWidget {
  const ArrowCard({Key? key, this.icon, required this.text}) : super(key: key);
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
