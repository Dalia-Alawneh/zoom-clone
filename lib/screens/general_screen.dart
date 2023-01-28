import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';
import 'package:zoomclone/utils/colors.dart';
import 'package:zoomclone/widgets/arrow_card.dart';
import 'package:zoomclone/widgets/custom_adaptive.dart';
import 'package:zoomclone/widgets/custom_text.dart';
import 'package:zoomclone/widgets/custom_textfield.dart';
import '../utils/colors.dart';
import '../utils/colors.dart';
import '../widgets/custom_card2.dart';
import '../widgets/meeting_option.dart';


class GeneralScreen extends StatefulWidget {
  const GeneralScreen({Key? key}) : super(key: key);

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {

  bool isHideSIEnabled = true;
  bool isCallKitEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {  },
            child: Icon(Icons.arrow_back_ios_new,color: Colors.white,)
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text(
          'General',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondaryBackgroundColor),
            child: CustomAdaptive(
              text: 'Hide sensitive information',
              isMute: isHideSIEnabled,
              onChange: onHideSIEnabled,
              secondaryText:'Enable this option to hide sensitive inform...',
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondaryBackgroundColor),
            child: CustomAdaptive(
              text: 'Use CallKit',
              isMute: isCallKitEnabled,
              onChange: onCallKitEnabled,
              secondaryText:'Enable to answer meeting and phone calls...',
            ),
          ),
          SizedBox(height: 25,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondaryBackgroundColor),
              child: ArrowCard(text: 'Ringtones',)),
          Padding(
              padding: EdgeInsets.all(10),
              child: CustomText(text: 'select the ringtone for meeting and phone calls')),
        ],
      ),
    );
  }

  onHideSIEnabled(bool val) {
    setState(() {
      isHideSIEnabled = val;
    });
  }

  onCallKitEnabled(bool val) {
    setState(() {
      isCallKitEnabled = val;
    });
  }

}