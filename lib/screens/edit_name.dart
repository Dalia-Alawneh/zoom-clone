import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zoomclone/screens/profile.dart';
import 'package:zoomclone/widgets/custom_text.dart';
import 'package:zoomclone/widgets/custom_textfield.dart';
import 'package:zoomclone/widgets/custom_textfield2.dart';

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
  void callback() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    String? username = _auth.currentUser!.displayName;
    dynamic name = username!.split(' ');
    // print(fNameController.text + " " + lNameController.text);
    String fName = name[0] ?? "example";
    String lName = name[1] ?? "example";
    print(name);
    TextEditingController fNameController = TextEditingController(text: fName);
    TextEditingController lNameController = TextEditingController(text: lName);
    print(lName);
    String displayName = '$fName $lName';
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
                // print(fNameController.text + " " + lNameController.text);
                await user!.reload();
                user!.updateDisplayName(
                    '${fNameController.text} ${lNameController.text}');
                await user!.reload();
                callback();
                Navigator.popAndPushNamed(context, 'profile').then((value) {
                  user!.reload();
                  // return Center(
                  //   child: CircularProgressIndicator(),
                  // );
                });
                //   return Profile();
                // }));
              },
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ))
        ],
      ),
      body: ListView(padding: EdgeInsets.only(top: 20), children: [
        CustomText(
          text: "FIRST NAME",
        ),
        CustomTextField2(
          controller: fNameController,
          isReadOnly: false,
          onChanged: (value) {},
          hintText: "FIRST NAME",
          // initialVal: fName,
        ),
        CustomText(
          text: "LAST NAME",
        ),
        CustomTextField2(
          controller: lNameController,
          isReadOnly: false,
          onChanged: (value) {},
          hintText: "LAST NAME",
          // initialVal: lName,
        ),
        CustomText(
          text: "DISPLAY NAME",
        ),
        // Text(lName),
        CustomTextField(
          isReadOnly: true,
          hintText: "Display Name",
          initialVal: '$fName $lName',
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
