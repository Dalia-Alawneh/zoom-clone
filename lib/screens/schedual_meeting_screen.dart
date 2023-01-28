import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';
import 'package:zoomclone/widgets/custom_adaptive.dart';
import 'package:zoomclone/widgets/custom_textfield.dart';
import '../widgets/custom_card2.dart';
import '../widgets/meeting_option.dart';

class ScheduleMeetingScreen extends StatefulWidget {
  const ScheduleMeetingScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleMeetingScreen> createState() => _ScheduleMeetingScreenState();
}

class _ScheduleMeetingScreenState extends State<ScheduleMeetingScreen> {
  //final AuthMethods _authMethods = AuthMethods();
  late TextEditingController meetingIdController;
  late TextEditingController nameController;
  // final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  bool isPasscodeDisabled = true;
  bool isUsePersonalMeetingIEnabled = false;
  bool isWaitingRoomEnabled = false;
  bool isHostVideoOn = false;
  var displayName = FirebaseAuth.instance.currentUser!.displayName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {Navigator.pop(context);},
          child: Text(
            'Cancle',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text(
          'Schedule Meeting',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Save',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          CustomTextField(
            hintText: " $displayName's Zoom Meeting",
            isReadOnly: false,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: secondaryBackgroundColor),
              child: CustomCard2(
                text: "Starts",
                secondaryText: 'Today at 8:00 PM',
              )),
          Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: secondaryBackgroundColor),
              child: CustomCard2(
                text: "Duration",
                secondaryText: '30 mins',
              )),
          Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: secondaryBackgroundColor),
              child: CustomCard2(
                text: "Time Zone",
                secondaryText: 'Asia/Hebron',
              )),
          Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: secondaryBackgroundColor),
              child: CustomCard2(
                text: "Repeat",
                secondaryText: 'Never',
              )),
          Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(color: secondaryBackgroundColor),
              child: CustomCard2(
                text: "Calendar",
                secondaryText: 'iCalendar',
              )),
          const SizedBox(height: 40),
          CustomAdaptive(
            text: 'Use Personal Meeting ID',
            isMute: isUsePersonalMeetingIEnabled,
            onChange: onUsePersonalMeetingIDEnabled,
            secondaryText: '940 103 5966',
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'if this option is enabled, any meeting options that you change here will be applied to all meetings that use your personal meeting ID',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white54,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, bottom: 8, top: 16),
            child: Text(
              'SECURITY',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
              ),
            ),
          ),
          CustomAdaptive(
            text: 'Require Meeting Passcode',
            isMute: isPasscodeDisabled,
            onChange: onPasscodeDisabled,
            secondaryText: 'Only users who have the invite link or passcode..',
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(color: secondaryBackgroundColor),
            child: GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Passcode',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    '7fd2WH',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          CustomAdaptive(
            text: 'Enable Waiting Room',
            isMute: isWaitingRoomEnabled,
            onChange: onWaitingRoomEnabled,
            secondaryText: 'Only users admitted by the host can join..',
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, bottom: 8, top: 16),
            child: Text(
              'MEETING OPTIONS',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
              ),
            ),
          ),
          MeetingOption(
            text: 'Host Video On',
            isMute: isHostVideoOn,
            onChange: onHostVideoOn,
          ),
        ],
      ),
    );
  }

  onPasscodeDisabled(bool val) {
    setState(() {
      isPasscodeDisabled = val;
    });
  }

  onUsePersonalMeetingIDEnabled(bool val) {
    setState(() {
      isUsePersonalMeetingIEnabled = val;
    });
  }

  onWaitingRoomEnabled(bool val) {
    setState(() {
      isWaitingRoomEnabled = val;
    });
  }

  onHostVideoOn(bool val) {
    setState(() {
      isHostVideoOn = val;
    });
  }
}
