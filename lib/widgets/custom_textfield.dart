import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, required this.hintText, this.initialVal, this.onChanged,required this.isReadOnly});
  String hintText;
  String? initialVal;
  Function(String)? onChanged;
  bool isReadOnly = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        readOnly: isReadOnly,
        onChanged: onChanged,
        controller: TextEditingController()..text = initialVal ?? "",
        //controller: meetingIdController,
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
