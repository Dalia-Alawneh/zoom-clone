// import 'package:flutter/material.dart';
// import 'package:zoomclone/resources/auth_methods.dart';
// import 'package:zoomclone/utils/colors.dart';
//
// class VideoCallScreen extends StatefulWidget {
//   const VideoCallScreen({super.key});
//
//   @override
//   State<VideoCallScreen> createState() => _VideoCallScreenState();
// }
//
// class _VideoCallScreenState extends State<VideoCallScreen> {
//   // final AuthMethods _authMethods = AuthMethods();
//   // late TextEditingController meetingIdController;
//   // late TextEditingController nameController;
//
//   @override
//   // void initState() {
//   //   meetingIdController = TextEditingController();
//   //   nameController= TextEditingController(
//   //     text: _authMethods.user.displayName,);
//   //   super.initState();
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: backgroundColor,
//         title: const Text('Join a Meeting', style: TextStyle(
//           fontSize: 18,
//         ),),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 60,
//             child: TextField(
//  //             controller: meetingIdController,
//               maxLines: 1,
//               textAlign: TextAlign.center,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 fillColor: secondaryBackgroundColor,
//                 filled: true,
//                 border: InputBorder.none,
//                 hintText: 'Room ID',
//                 contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 60,
//             child: TextField(
//   //            controller: nameController,
//               maxLines: 1,
//               textAlign: TextAlign.center,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 fillColor: secondaryBackgroundColor,
//                 filled: true,
//                 border: InputBorder.none,
//                 hintText: 'Name',
//                 contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20,),
//           InkWell(
//             onTap: null,
//             child: const Padding(padding: EdgeInsets.all(8),),
//           ),
//           const SizedBox(height: 20,)
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/meeting_option.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  //final AuthMethods _authMethods = AuthMethods();
  late TextEditingController meetingIdController;
  late TextEditingController nameController;
  // final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  bool isAudioMuted = true;
  bool isVideoMuted = true;

  @override
  // void initState() {
  //   meetingIdController = TextEditingController();
  //   nameController = TextEditingController(
  //     text: _authMethods.user.displayName,
  //   );
  //   super.initState();
  // }

  @override
  // void dispose() {
  //   super.dispose();
  //   meetingIdController.dispose();
  //   nameController.dispose();
  //   JitsiMeet.removeAllListeners();
  // }

  // _joinMeeting() {
  //   _jitsiMeetMethods.createMeeting(
  //     roomName: meetingIdController.text,
  //     isAudioMuted: isAudioMuted,
  //     isVideoMuted: isVideoMuted,
  //     username: nameController.text,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            color: Colors.white,
            size: 23,
          ),
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text(
          'Join a Meeting',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 60,
            child: TextField(
              //controller: meetingIdController,
              maxLines: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                fillColor: secondaryBackgroundColor,
                filled: true,
                border: InputBorder.none,
                hintText: 'Room ID',
                // suffixIcon: Icon(Icons.arrow_drop_down),
                contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 0),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Join with a personal link name',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(32, 129, 238, 1.0),
                fontSize: 10,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            //controller: nameController,
            maxLines: 1,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              fillColor: secondaryBackgroundColor,
              filled: true,
              border: InputBorder.none,
              hintText: 'Name',
              contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 0),
            ),
          ),
          CustomButton(
            text: 'Join',
            onPressed: () {}, // _joinMeeting
            bcolor: secondaryBackgroundColor, textBColor: textColor,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'If you recived an invitation link, tab on the link again to join the meeting',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white54,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              'JOIN OPTIONS',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
            ),
          ),
          MeetingOption(
            text: "Don't Connect To Audio",
            isMute: isAudioMuted,
            onChange: onAudioMuted,
          ),
          MeetingOption(
            text: 'Turn Off My Video',
            isMute: isVideoMuted,
            onChange: onVideoMuted,
          ),
        ],
      ),
    );
  }

  onAudioMuted(bool val) {
    setState(() {
      isAudioMuted = val;
    });
  }

  onVideoMuted(bool val) {
    setState(() {
      isVideoMuted = val;
    });
  }
}
