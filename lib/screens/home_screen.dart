import 'package:flutter/material.dart';
<<<<<<< HEAD
<<<<<<< HEAD

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Center(
          child: Text('home'),
        ));
=======
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zoomclone/utils/dialog_tile.dart';
import 'package:zoomclone/widgets/home_meeting_button.dart';
=======
import 'package:zoomclone/screens/history_meeting_screen.dart';
import 'package:zoomclone/screens/meeting_screen.dart';
>>>>>>> wafaa
import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List <Widget> pages = [
    MeetingScreen(),
    const HistoryMeetingScreen(),
    const Text('Contacts'),
    const Text('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text('Meet & Chat'),
        centerTitle: true,
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
                                  '987 475 101',
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
                                          text: 'Start Meeting',
                                          icon: Icons.calendar_month),
                                      Divider(
                                        height: 30,
                                        thickness: 0.4,
                                        color:
                                            Color.fromARGB(40, 143, 143, 143),
                                      ),
                                      DialogTile(
                                          text: 'Send Invitation',
                                          icon: Icons.share),
                                      Divider(
                                        height: 30,
                                        thickness: 0.4,
                                        color:
                                            Color.fromARGB(40, 143, 143, 143),
                                      ),
                                      DialogTile(
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
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.comment_bank), label: 'Meet & Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock), label: 'Meetings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
    );
>>>>>>> 8e3e663056ce4a37ad1e68bf9a1d3245b77d5137
  }
}
