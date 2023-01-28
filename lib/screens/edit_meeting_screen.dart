import 'package:flutter/material.dart';
import 'package:zoomclone/widgets/basic_card.dart';
import 'package:zoomclone/widgets/custom_text.dart';
import 'package:zoomclone/widgets/custom_textfield.dart';
import 'package:zoomclone/widgets/divline.dart';
import 'package:zoomclone/widgets/meeting_option.dart';

import '../utils/colors.dart';
import '../widgets/new_meeting_options.dart';

class EditMeeting extends StatefulWidget {
  const EditMeeting({super.key});

  @override
  State<EditMeeting> createState() => _EditMeetingState();
}

class _EditMeetingState extends State<EditMeeting> {
  var _id = '987 475 1071';
  bool isRequired = true;
  bool isEnable = true;
  bool isVideoOn = false;
  bool isPartsVideoOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text('Personal Meeting ID'),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ))
        ],
      ),
      body: ListView(padding: EdgeInsets.only(top: 20), children: [
        CustomText(
          text: "PERSONAL MEETING ID (PMI)",
        ),
        CustomTextField(
          isReadOnly: false,

          hintText: "Personal ID",
          initialVal: _id,
        ),
        SizedBox(
          height: 20,
        ),
        CustomText(
          text: 'SECURITY',
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(color: secondaryBackgroundColor),
          child: Column(children: [
            NewMeetingOption(
              text: "Require Meeting Passcode",
              isMute: isRequired,
              onChange: (val) {
                setState(() {
                  isRequired = val;
                });
              },
            ),
            DivLine(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: BasicCard(
                text: "Passcode",
                sectext: "8SL3GN",
              ),
            ),
            DivLine(
              height: 10,
            ),
            NewMeetingOption(
                text: "Enable Wating Room",
                isMute: isEnable,
                onChange: (val) {
                  setState(() {
                    isEnable = val;
                  });
                }),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        CustomText(
          text: 'MEETING OPTIONS',
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(color: secondaryBackgroundColor),
          child: Column(children: [
            NewMeetingOption(
                text: "Host Video On",
                isMute: isVideoOn,
                onChange: (val) {
                  setState(() {
                    isVideoOn = val;
                  });
                }),
            DivLine(
              height: 10,
            ),
            NewMeetingOption(
                text: "Participant Video On",
                isMute: isPartsVideoOn,
                onChange: (val) {
                  setState(() {
                    isPartsVideoOn = val;
                  });
                }),
            DivLine(
              height: 10,
            ),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Audio Option",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "United States",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Telephone and Device Audio',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: Colors.white38,
                      )
                    ],
                  )
                ],
              ),
            ),
            DivLine(
              height: 10,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                onPressed: null,
                child: Text(
                  'Advanced Options',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            )
          ]),
        )
      ]),
    );
  }
}
