import 'package:flutter/material.dart';

import '../utils/colors.dart';

class InputWithLable extends StatelessWidget {
  const InputWithLable({Key? key, required this.hintText, required this.lable})
      : super(key: key);
  final hintText;
  final lable;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(lable),
        ),
        Expanded(
          child: TextField(
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
        ),
      ],
    );
  }
}
