import 'package:flutter/material.dart';
import 'package:zoomclone/widgets/custom_text.dart';
import 'package:zoomclone/widgets/custom_textfield.dart';

import '../utils/colors.dart';

class EditName extends StatelessWidget {
  const EditName({super.key});

  @override
  Widget build(BuildContext context) {
    String fName = "example";
    String lName = "example";
    String displayName = "example";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          'Edit Name',
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
      body: ListView(padding: EdgeInsets.only(top: 20), children: [
        CustomText(
          text: "FIRST NAME",
        ),
        CustomTextField(
          hintText: "First Name",
          initialVal: fName,
        ),
        CustomText(
          text: "LAST NAME",
        ),
        CustomTextField(
          hintText: "Last Name",
          initialVal: lName,
        ),
        CustomText(
          text: "DISPLAY NAME",
        ),
        CustomTextField(
          hintText: "Display Name",
          initialVal: displayName,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            """Enter a name (e.g. your first name, full name, or nickname) that you would like your Zoom contacts to see""",
            style: TextStyle(fontSize: 13, color: Colors.white38),
          ),
        )
      ]),
    );
  }
}
