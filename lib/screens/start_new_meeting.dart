import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/custom_adaptive.dart';
import '../widgets/custom_button.dart';
import '../widgets/meeting_option.dart';

class StartAMeetingScreen extends StatefulWidget {
  const StartAMeetingScreen({Key? key}) : super(key: key);

  @override
  State<StartAMeetingScreen> createState() => _StartAMeetingScreenState();
}

class _StartAMeetingScreenState extends State<StartAMeetingScreen> {
  late TextEditingController meetingIdController;
  late TextEditingController nameController;

  bool isUsePersonalMeetingIEnabled = false;
  bool isHostVideoOn=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {  },
          child: Text('Cancle', style: TextStyle(
            color: Colors.white,
            fontSize:13,
          ),),
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text(
          'Start a Meeting',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,),
          MeetingOption(
            text: 'Host Video On',
            isMute: isHostVideoOn,
            onChange: onHostVideoOn,
          ),

          CustomAdaptive(
            text: 'Use Personal Meeting ID (PMI)',
            isMute: isUsePersonalMeetingIEnabled,
            onChange: onUsePersonalMeetingIDEnabled,
            secondaryText:'940 103 5966',
          ),

          CustomButton
            (text: 'Start a Meeting', onPressed: (){}, bcolor: Colors.blue, textBColor: Colors.white,)
        ],
      ),
    );
  }


  onUsePersonalMeetingIDEnabled(bool val) {
    setState(() {
      isUsePersonalMeetingIEnabled = val;
    });
  }
  onHostVideoOn(bool val) {
    setState(() {
      isHostVideoOn = val;
    });
  }

}