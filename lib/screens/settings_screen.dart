import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';
import 'package:zoomclone/widgets/divline.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_text.dart';
import 'dart:ui' as ui;

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final String name = "Dalia Alawneh";
  final String email = "example@gmail.com";
  final String status = "LICENCED";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(40, 143, 143, 143)),
              child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                        SizedBox(
                          width: 18,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(name, style: TextStyle(fontSize: 16)),
                                Text('  $status',
                                    style: TextStyle(
                                        fontSize: 12,
                                        foreground: Paint()
                                          ..shader = ui.Gradient.linear(
                                            Offset(5, 25),
                                            Offset(10, 5),
                                            <Color>[
                                              Color.fromARGB(255, 221, 31, 31),
                                              Colors.cyan,
                                            ],
                                          )))
                              ],
                            ),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  clipBehavior: Clip.antiAlias,
                                  child: Image.asset(
                                    "assets/images/logozoom.webp",
                                    width: 28,
                                  ),
                                ),
                                Text('  $email')
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.white38,
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 30,
          ),
          CustomText(
            text: 'ADDED FEATURES',
          ),
          Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(40, 143, 143, 143)),
              child: CustomCard(
                text: "Whiteboard",
                icon: Icons.check_box_outline_blank_rounded,
              )),
          SizedBox(
            height: 30,
          ),
          CustomText(
            text: 'STATUS',
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(40, 143, 143, 143)),
            child: Column(
              children: [
                CustomCard(
                  text: "Meetings",
                  icon: Icons.lock_clock_outlined,
                ),
                DivLine(),
                CustomCard(
                  text: "Contacts",
                  icon: Icons.contacts_outlined,
                ),
                DivLine(),
                CustomCard(
                  text: "Chat",
                  icon: Icons.chat_bubble_outline_outlined,
                ),
                DivLine(),
                CustomCard(
                  text: "General",
                  icon: Icons.settings_outlined,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomText(
            text: 'OTHER',
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(40, 143, 143, 143)),
            child: Column(
              children: [
                CustomCard(
                  text: "Siri Shortcuts",
                  icon: Icons.record_voice_over,
                ),
                DivLine(),
                CustomCard(
                  text: "Scan QR Code",
                  icon: Icons.qr_code_scanner_rounded,
                ),
                DivLine(),
                CustomCard(
                  text: "About",
                  icon: Icons.info_outline,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            """Copyright ©2012-2022 Zoom Video Communications, Inc. All rights reserved.""",
            style: TextStyle(color: Colors.white38),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
