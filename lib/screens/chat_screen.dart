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
import '../widgets/divline.dart';
import '../widgets/meeting_option.dart';
import '../widgets/rounded_adaptive.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  String selected = "";
  List checkListItems = [
    {
      "id": 0,
      "value": false,
      "title": "All messages",
    },
    {
      "id": 1,
      "value": false,
      "title": "Only private messages or mentions",
    },
    {
      "id": 2,
      "value": false,
      "title": "Nothing",
    },
  ];

  bool isShowLinkEnabled = true;
  bool isShowUnreadMessagesEnabled = true;
  bool isKeepUnreadMessagesEnabled = false;
  bool isMoveMessagesEnabled= true;
  bool isNotifyEnabled = false;
  bool disableInMeeting = true;


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
          'Chat',
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
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondaryBackgroundColor,
              ),
              child: RoundedAdaptive(
                text: 'Show link preview',
                isMute: isShowLinkEnabled,
                onChange: onShowLinkEnabled,
              ),
            ),
            SizedBox(height: 20,),
            CustomText(text: 'RECEIVE NOTIFICATIONS FOR',),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.fromLTRB(10, 0, 10, 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondaryBackgroundColor,
              ),
              child: Column(
                children: List.generate(
                  checkListItems.length,
                      (index) => CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    title: Text(
                      checkListItems[index]["title"],
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    value: checkListItems[index]["value"],
                    onChanged: (value) {
                      setState(() {
                        for (var element in checkListItems) {
                          element["value"] = false;
                        }
                        checkListItems[index]["value"] = value;
                        selected =
                        "${checkListItems[index]["id"]}, ${checkListItems[index]["title"]}, ${checkListItems[index]["value"]}";
                      });
                    },
                  ),
                ),
              ),
            ),
            CustomText(text: 'UNREAD MESSAGES',),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(40, 143, 143, 143)),
              child: Column(
                children: [
                  RoundedAdaptive(
                    text: 'Keep all unread messages on tap',
                    isMute: isKeepUnreadMessagesEnabled,
                    onChange: onKeepUnreadMessagesEnabled,
                  ),
                  DivLine(),
                  RoundedAdaptive(
                    text: 'Show unread messages count(1️⃣)',
                    isMute: isShowUnreadMessagesEnabled,
                    onChange: onShowUnreadMessagesEnabled,
                  ),
                  DivLine(),
                  RoundedAdaptive(
                    text: 'Move Messages with new replies',
                    isMute: isMoveMessagesEnabled,
                    onChange: onMoveMessagesEnabled,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(40, 143, 143, 143)),
              child: Column(
                children: [
                  CustomCard2(text: 'Receive notifications for keywords', secondaryText: 'Not set'),
                  DivLine(),
                  RoundedAdaptive(
                    text: 'Notify me about new replies',
                    isMute: isNotifyEnabled,
                    onChange: onNotifyEnabled,
                  ),
                  DivLine(),
                  RoundedAdaptive(
                    text: 'Disable when is meeting',
                    isMute: disableInMeeting,
                    onChange: onDisableInMeeting,
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }

  onShowLinkEnabled(bool val) {
    setState(() {
      isShowLinkEnabled = val;
    });
  }


  onKeepUnreadMessagesEnabled(bool val) {
    setState(() {
      isKeepUnreadMessagesEnabled
      = val;
    });
  }

  onShowUnreadMessagesEnabled(bool val) {
    setState(() {
      isShowUnreadMessagesEnabled = val;
    });
  }

  onMoveMessagesEnabled(bool val) {
    setState(() {
      isMoveMessagesEnabled = val;
    });
  }
  onNotifyEnabled(bool val) {
    setState(() {
      isNotifyEnabled = val;
    });
  }
  onDisableInMeeting(bool val) {
    setState(() {
      disableInMeeting = val;
    });
  }
}