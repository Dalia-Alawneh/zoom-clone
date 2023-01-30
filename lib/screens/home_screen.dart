import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zoomclone/screens/contacts_screen.dart';
import 'package:zoomclone/screens/edit_meeting_screen.dart';
import 'package:zoomclone/screens/settings_screen.dart' as SettingsScreen;
import 'package:zoomclone/screens/team_chat.dart';
import 'package:zoomclone/widgets/appbar.dart';
import 'package:zoomclone/widgets/dialog_tile.dart';
import 'package:zoomclone/widgets/home_meeting_button.dart';
// import 'package:zoomclone/screens/history_meeting_screen.dart';
import 'package:zoomclone/screens/meeting_screen.dart';
import '../main.dart';
import '../utils/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/divline.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var _id;
  final _firestore = FirebaseFirestore.instance;
  void getMeetings() async {
    final meetings = await _firestore.collection('meetings').get();
    for (var meeting in meetings.docs) {
      _id = meeting['id'].toString();
    }
  }

  @override
  void initState() {
    super.initState();
    getMeetings();
  }
  int _page = 0;
  int _topic = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
      _topic = _page;
    });
  }

  List<String> topics = ["Meetings", "Team Chat", "", "More"];
  List<Widget> pages = [
    MeetingScreen(),
    const TeamChatScreen(),
    const ContactsScreen(),
    const SettingsScreen.Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        text: topics[_topic],
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.info_outline),
            onPressed: () => {
              showGeneralDialog(
                barrierLabel: "showGeneralDialog",
                barrierDismissible: true,
                barrierColor: Colors.black.withOpacity(0.6),
                transitionDuration: const Duration(milliseconds: 400),
                context: context,
                pageBuilder: (context, _, __) {
                  return Align(
                      alignment: Alignment.bottomCenter,
                      child: IntrinsicHeight(
                        child: Container(
                          // height: 200,
                          width: double.maxFinite,
                          clipBehavior: Clip.antiAlias,
                          padding: const EdgeInsets.all(16),
                          decoration: const BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Text('Personal Meeting ID',
                                    style: TextStyle(color: textColor)),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  _id,
                                  style:
                                      TextStyle(fontSize: 26, color: textColor),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: secondaryBackgroundColor,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      DialogTile(
                                          onTap: () => {},
                                          text: 'Start Meeting',
                                          icon: Icons.calendar_month),
                                      DivLine(),
                                      DialogTile(
                                          onTap: () => {
                                                Navigator.pop(context),
                                                showGeneralDialog(
                                                  barrierLabel:
                                                      "showGeneralDialog",
                                                  barrierDismissible: true,
                                                  barrierColor: Colors.black
                                                      .withOpacity(0.6),
                                                  transitionDuration:
                                                      const Duration(
                                                          milliseconds: 400),
                                                  context: context,
                                                  pageBuilder:
                                                      (context, _, __) {
                                                    return Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: IntrinsicHeight(
                                                          child: Container(
                                                            // height: 200,
                                                            width: double
                                                                .maxFinite,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(16),
                                                            decoration:
                                                                const BoxDecoration(
                                                              color:
                                                                  backgroundColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        16),
                                                                topRight: Radius
                                                                    .circular(
                                                                        16),
                                                              ),
                                                            ),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              child: Column(
                                                                children: [
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            15),
                                                                    decoration: BoxDecoration(
                                                                        color:
                                                                            secondaryBackgroundColor,
                                                                        borderRadius:
                                                                            BorderRadius.circular(15)),
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        DialogTile(
                                                                            onTap: () =>
                                                                                {},
                                                                            text:
                                                                                'Send Message',
                                                                            icon:
                                                                                Icons.message_rounded),
                                                                        DivLine(),
                                                                        DialogTile(
                                                                            onTap: () =>
                                                                                {},
                                                                            text:
                                                                                'Send Email',
                                                                            icon:
                                                                                Icons.mail_outline),
                                                                        DivLine(),
                                                                        DialogTile(
                                                                            onTap: () =>
                                                                                {},
                                                                            text:
                                                                                'Copy to Clipboard',
                                                                            icon:
                                                                                Icons.copy),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 18,
                                                                  ),
                                                                  GestureDetector(
                                                                    onTap: () {
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child: Text(
                                                                        'Cancel',
                                                                        style: TextStyle(
                                                                            color:
                                                                                textColor,
                                                                            fontSize:
                                                                                20)),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ));
                                                  },
                                                  transitionBuilder: (_,
                                                      animation1, __, child) {
                                                    return SlideTransition(
                                                      position: Tween(
                                                        begin:
                                                            const Offset(0, 1),
                                                        end: const Offset(0, 0),
                                                      ).animate(animation1),
                                                      child: child,
                                                    );
                                                  },
                                                ),
                                              },
                                          text: 'Send Invitation',
                                          icon: Icons.share),
                                      DivLine(),
                                      DialogTile(
                                          onTap: () => {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            EditMeeting()))
                                              },
                                          text: 'Edit Meeting',
                                          icon: Icons.edit_outlined),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Cancel',
                                      style: TextStyle(
                                          color: textColor, fontSize: 20)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ));
                },
                transitionBuilder: (_, animation1, __, child) {
                  return SlideTransition(
                    position: Tween(
                      begin: const Offset(0, 1),
                      end: const Offset(0, 0),
                    ).animate(animation1),
                    child: child,
                  );
                },
              ),
            },
          )
        ],
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        onTap: onPageChanged,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock), label: 'Meetings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: 'Team Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
    );
  }
}
