import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hintText, this.initialVal});
  String hintText;
  String? initialVal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        controller: TextEditingController()..text = initialVal ?? "",
        //controller: meetingIdController,
        maxLines: 1,
        keyboardType: TextInputType.number,
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
