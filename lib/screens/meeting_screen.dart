import 'dart:math';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:zoomclone/screens/create_new_meeting.dart';
import 'package:zoomclone/screens/schedual_meeting_screen.dart';
import '../main.dart';
import '../widgets/home_meeting_button.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HomeMeetingButton(
            onPressed: () async {
              await availableCameras().then((value) => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreateNewMeeting(cameras: value))));
            },
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
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScheduleMeetingScreen()))
            },
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
    ]);
  }
}
