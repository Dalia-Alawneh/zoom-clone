import 'package:flutter/material.dart';

class DivLine extends StatelessWidget {
  const DivLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 30,
      thickness: 0.4,
      color:
          Color.fromARGB(40, 143, 143, 143),
    );
  }
}