import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zoomclone/widgets/home_meeting_button.dart';
import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChange(int page) {
    _page = page;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text('Meet & Chat'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        onTap: onPageChange,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: 'Meet & Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock), label: 'Meetings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
              onPressed: () => {},
              icon: Icons.videocam,
              text: 'New Meeting',
              color: Color.fromARGB(255, 250, 111, 12),
            ),
            HomeMeetingButton(
              onPressed: () => {},
              icon: Icons.add_box_rounded,
              text: 'Join Meeting',
            ),
            HomeMeetingButton(
              onPressed: () => {},
              icon: Icons.calendar_today,
              text: 'Schedule',
            ),
            HomeMeetingButton(
              onPressed: () => {},
              icon: Icons.arrow_upward,
              text: 'Share Screen',
            ),
          ],
        ),
        Expanded(
          child: Center(
              child: Text(
            'Create/Join Meeting with just a click!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
        ),
      ]),
    );
  }
}
