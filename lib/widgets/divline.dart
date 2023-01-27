import 'package:flutter/material.dart';

class DivLine extends StatelessWidget {
  DivLine({Key? key, this.height}) : super(key: key);
  double? height = 30;
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height ?? 30,
      thickness: 0.4,
      color: Color.fromARGB(40, 143, 143, 143),
    );
  }
}
