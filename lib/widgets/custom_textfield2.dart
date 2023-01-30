import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTextField2 extends StatelessWidget {
  CustomTextField2(
      {super.key,
      required this.hintText,
      this.onChanged,
      // required this.initialVal,
      required this.isReadOnly,
      required this.controller});
  String hintText;
  // final String initialVal;
  Function(String)? onChanged;
  final controller;
  bool isReadOnly = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        controller: controller,
        readOnly: isReadOnly,
        onChanged: onChanged,
        // initialValue: initialVal,
        maxLines: 1,
        decoration: InputDecoration(
          fillColor: secondaryBackgroundColor,
          filled: true,
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
          hintText: hintText,
          // suffixIcon: Icon(Icons.arrow_drop_down),
          contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 0),
        ),
      ),
    );
  }
}
