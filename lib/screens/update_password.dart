import 'package:flutter/material.dart';
import 'package:zoomclone/widgets/divline.dart';

import '../utils/colors.dart';
import '../widgets/input_with_lable.dart';

class UpdatePassword extends StatelessWidget {
  const UpdatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          'Update Password',
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ))
        ],
      ),
      body: ListView(children: [
        Container(
          color: secondaryBackgroundColor,
          child: Column(children: [
            InputWithLable(
              lable: 'Old Password',
              hintText: "Verify your password",
            ),
            DivLine(
              height: 10,
            ),
            InputWithLable(
              lable: 'New Password',
              hintText: "Set new password",
            ),
            DivLine(
              height: 10,
            ),
            InputWithLable(
              lable: 'Confirm',
              hintText: "Confirm password",
            ),
          ]),
        )
      ]),
    );
  }
}
