import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key, this.text
  }) : super(key: key);
  final text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, bottom: 10),
      child: Text(
        text,
        style: TextStyle(color: Colors.white38),
      ),
    );
  }
}
