import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zoomclone/screens/profile.dart';
import 'package:zoomclone/widgets/custom_text.dart';
import 'package:zoomclone/widgets/custom_textfield.dart';

import '../utils/colors.dart';

class EditName extends StatefulWidget {
  EditName({super.key});

  @override
  State<EditName> createState() => _EditNameState();
}

class _EditNameState extends State<EditName> {
  var _auth = FirebaseAuth.instance;
  final GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
  var user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    String? username = _auth.currentUser!.displayName;
    dynamic name = username!.split(' ');
    print(name);
    String fName = name[0] ?? "example";
    String lName = name[1] ?? "example";
    String displayName = 'Dodd Hisham';
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
              onPressed: () async {
                user!.updateDisplayName(displayName);
                await user!.reload();
                
                // Navigator.push(context, MaterialPageRoute(builder: (context){
                //   return Profile();
                // }));
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
          isReadOnly: false,
          onChanged: (value) {
            setState(() {
              fName = value;
            });
          },
          hintText: "First Name",
          initialVal: fName,
        ),
        CustomText(
          text: "LAST NAME",
        ),
        CustomTextField(
          isReadOnly: false,
          onChanged: (value) {
            setState(() {
              lName = value;
            });
          },
          hintText: "Last Name",
          initialVal: lName,
        ),
        CustomText(
          text: "DISPLAY NAME",
        ),
        CustomTextField(
          isReadOnly: true,
          onChanged: (value) {
            setState(() {
              displayName = value;
            });
          },
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
