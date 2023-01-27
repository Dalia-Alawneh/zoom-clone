import 'package:flutter/material.dart';

import '../utils/constants.dart';

class BasicCard extends StatelessWidget {
  const BasicCard({Key? key, this.sectext, required this.text}) : super(key: key);
  final text;
  final sectext;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
              Text(
                text,
                style: TextStyle(fontSize: 17),
              ),Text(
                sectext,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              )
        ],
      ),
    );
  }
}
