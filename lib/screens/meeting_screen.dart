import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoomclone/resources/jitsi_meet_methods.dart';
import 'package:zoomclone/screens/schedual_meeting_screen.dart';
import 'package:zoomclone/screens/video_call_screen.dart';
import 'package:zoomclone/widgets/divline.dart';
import '../widgets/home_meeting_button.dart';

class MeetingScreen extends StatefulWidget {
  MeetingScreen({Key? key}) : super(key: key);

  @override
  State<MeetingScreen> createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen> {
  //final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    // _jitsiMeetMethods.createNewMeeting(
    //   roomName: roomName, isAudioMuted: true, isVideoMuted: true);
  }

  bool isDisabled = true;

  var _color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HomeMeetingButton(
            onPressed: createNewMeeting,
            icon: Icons.videocam,
            text: 'New Meeting',
            color: Color.fromARGB(255, 250, 111, 12),
          ),
          HomeMeetingButton(
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoCallScreen()))
            },
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
            onPressed: () => {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      title: Text(
                        "Share Screen",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      actions: [
                        Form(
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                _color = Colors.blue;
                              });
                            },
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.black38,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1)),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 0, 0),
                                hintText: "Sharing Key or Meeting ID"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 15, bottom: 5),
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                        style: BorderStyle.solid),
                                    top: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                        style: BorderStyle.solid),
                                  ),
                                ),
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Cancel",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.blue),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(top: 15, bottom: 5),
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                        style: BorderStyle.solid),
                                  ),
                                ),
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "Ok",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: _color),
                                    )),
                              ),
                            ),
                          ],
                        )
                      ],
                      content: Text(
                          textAlign: TextAlign.center,
                          "Enter Sharing Key or Meeting ID to share to a Zoom Room",
                          style: TextStyle(fontSize: 13)));
                },
              )
            },
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
