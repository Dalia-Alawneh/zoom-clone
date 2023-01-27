import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zoomclone/screens/delete_account.dart';
import 'package:zoomclone/screens/edit_name.dart';
import 'package:zoomclone/screens/update_password.dart';
import 'package:zoomclone/widgets/basic_card.dart';
import 'package:zoomclone/widgets/custom_card.dart';
import 'package:zoomclone/widgets/divline.dart';
import 'package:zoomclone/widgets/meeting_option.dart';
import 'package:zoomclone/widgets/new_meeting_options.dart';

import '../utils/colors.dart';
import '../utils/constants.dart';
import '../widgets/custom_card2.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // const Profile({super.key});
  final String status = "licensed";

  String _displayName = "example";

  String _profilePhoto = "assets/images/default.webp";

  bool enableFace = true;

  @override
  Widget build(BuildContext context) {
    checkStatus = true;
    colorForStatus = true;
    var _color = Color.fromARGB(40, 143, 143, 143);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text('My Profile'),
        centerTitle: true,
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(40, 143, 143, 143)),
              child: Column(
                children: [
                  CustomCard2(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DeleteAccount(),
                          ));
                    },
                    text: 'Account',
                    secondaryText: 'example@gmail.com',
                  ),
                  DivLine(),
                  CustomCard2(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EditName())),
                      text: 'Display Name',
                      secondaryText: _displayName),
                  DivLine(),
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Profile Photo',
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              clipBehavior: Clip.antiAlias,
                              child: Image.asset(
                                "assets/images/default.webp",
                                width: 50,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.white38,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  DivLine(),
                  CustomCard2(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UpdatePassword(),
                          ));
                    },
                    text: "Update Password",
                    secondaryText: "",
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(40, 143, 143, 143)),
              child: Column(children: [
                CustomCard2(text: "Work Location", secondaryText: 'Not Set'),
                DivLine(),
                CustomCard(icon: Icons.circle_outlined, text: "Available"),
                DivLine(),
                CustomCard2(text: "Personal Note", secondaryText: 'Not Set'),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(40, 143, 143, 143)),
              child: Column(children: [
                BasicCard(text: "Department", sectext: 'Not Set'),
                DivLine(),
                BasicCard(text: "Job Title", sectext: 'Not Set'),
                DivLine(),
                BasicCard(text: "Location", sectext: 'Not Set'),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 5),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(40, 143, 143, 143)),
              child: Column(children: [
                CustomCard2(
                    text: "Personal Meeting ID (PMI)",
                    secondaryText: '934 950 127'),
                DivLine(),
                CustomCard2(
                    text: "Default Call-In Country or Region)",
                    secondaryText: 'Not Set'),
                DivLine(),
                CustomCard2(text: "Licenses", secondaryText: ''),
              ]),
            ),
            Text(
              """   You are a $status user""",
              style: TextStyle(color: Colors.white38),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(40, 143, 143, 143)),
              child: NewMeetingOption(
                text: 'Use Face Id',
                isMute: enableFace,
                onChange: (val) {
                  setState(() {
                    enableFace = val;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 5),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: _color),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _color = Color.fromARGB(40, 160, 160, 160);
                  });
                  FirebaseAuth.instance.signOut();
                },
                child: Text(
                  'Sign Out',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.red.shade400,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
    );
  }
}
