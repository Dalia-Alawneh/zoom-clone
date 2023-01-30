import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';
import 'package:zoomclone/widgets/custom_card2.dart';
import 'package:zoomclone/widgets/custom_adaptive.dart';
import 'package:zoomclone/widgets/custom_adaptive_1.dart';


class MeetingSettingScreen extends StatefulWidget {
  const MeetingSettingScreen({Key? key}) : super(key: key);

  @override
  State<MeetingSettingScreen> createState() => _MeetingSettingScreenState();
}

class _MeetingSettingScreenState extends State<MeetingSettingScreen> {
  @override
  bool isMyMicrophoneEnabled = false;
  bool isOriginalAudio = false;
  bool isMyVideoOff = false;
  bool isMyVideoMirrored = true;
  bool isShowVideoPreview = false;
  bool isHdVideo = true;
  bool isPictureInPicture = true;
  bool isAlwaysShowMeetingControls = false;
  bool isShowClosedCaptioning = true;
  bool isShowMyConnectedTime = false;
  bool isShowNameWhenParticipantsJoin = false;
  bool isShowNonVideoParticipants = true;
  bool isAskToConfirmWhenLeavingAMeeting = true;
  bool isSafeDrivingMode = true;
  bool isAutoCopyInviteLink = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text(
          "Meeting Setting",
          style:  TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8, bottom: 8, top: 16),
            child: Text(
              'AUDIO',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration( color:secondaryBackgroundColor),
              child: CustomCard2(
                text: "Auto-Connected to Audio",
                secondaryText: 'Off*',
              )),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 51,
            text: 'Mute My Microphone',
            isMute: isMyMicrophoneEnabled,
            onChange: onMicrophoneEnabled,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 80,
            text: 'Use Original Audio ',
            isMute: isOriginalAudio,
            onChange: onOriginalAudioEnable,
            secondaryText:
                'This will allow you to enable or in '
                ' \na meeting. Original.',
          ),
          const Divider(
            indent: 15,
            height: .6,
            thickness: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, bottom: 8, top: 16),
            child: Text(
              'VIDEO',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
              ),
            ),
          ),
          CustomAdaptive1(
            height: 51,
            text: 'Turn Off My Video',
            isMute: isMyVideoOff,
            onChange: onVideoOff,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: secondaryBackgroundColor),
              child: CustomCard2(
                text: "Aspect Ratio",
                secondaryText: 'Original ratio',
              )),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 51,
            text: 'Mirror My Video',
            isMute: isMyVideoMirrored,
            onChange: onVideoMirror,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 51,
            text: 'Show Video Preview',
            isMute: isShowVideoPreview,
            onChange: onShowVideoPreview,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 51,
            text: 'HD Video',
            isMute: isHdVideo,
            onChange: onHdVideo,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 51,
            text: 'Picture in Picture',
            isMute: isPictureInPicture,
            onChange: onPictureInPicture,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
           const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, bottom: 8, top: 16),
            child: Text(
              'General',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
              ),
            ),
          ),
          CustomAdaptive1(
            height: 51,
            text: 'Always Show Meeting Controls',
            isMute: isAlwaysShowMeetingControls,
            onChange: onAlwaysShowMeetingControls,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 51,
            text: 'Show Closed captioning (when available)',
            isMute: isShowClosedCaptioning,
            onChange: onShowClosedCaptioning,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 51,
            text: 'Show My Connected Time',
            isMute: isShowMyConnectedTime,
            onChange: onShowMyConnectedTime,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 51,
            text: 'Show Name When Participants Join',
            isMute: isShowNameWhenParticipantsJoin,
            onChange: onShowNameWhenParticipantsJoin,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 51,
            text: 'Show Non-Video Participants',
            isMute: isShowNonVideoParticipants,
            onChange: onShowNonVideoParticipants,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 51,
            text: 'Ask to Confirm when Leaving a Meeting',
            isMute: isAskToConfirmWhenLeavingAMeeting,
            onChange: onAskToConfirmWhenLeavingAMeeting,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive(
            //height: 51,
            text: 'Safe Driving Mode',
            isMute: isSafeDrivingMode,
            onChange: onSafeDrivingMode,
            secondaryText:
                'Swipe right to disable video and audio when driving',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive1(
            height: 70,
            text: 'Show User Profile icon next to in-meeting \nchat messages',
            isMute: isAskToConfirmWhenLeavingAMeeting,
            onChange: onAskToConfirmWhenLeavingAMeeting,
            secondaryText: '',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: secondaryBackgroundColor),
              child: CustomCard2(
                text: "Reaction Skin Tone",
                secondaryText: '',
              )),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
          CustomAdaptive(
            //height: 51,
            text: 'Auto-Copy Invite Link',
            isMute: isAutoCopyInviteLink,
            onChange: onAutoCopyInviteLink,
            secondaryText:
                'Swipe right to disable video and audio when driving',
          ),
          const Divider(
            indent: 15,
            height: .1,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  onMicrophoneEnabled(bool val) {
    setState(() {
      isMyMicrophoneEnabled = val;
    });
  }

  onOriginalAudioEnable(bool val) {
    setState(() {
      isOriginalAudio = val;
    });
  }

  onVideoOff(bool val) {
    setState(() {
      isMyVideoOff = val;
    });
  }

  onVideoMirror(bool val) {
    setState(() {
      isMyVideoMirrored = val;
    });
  }

  onShowVideoPreview(bool val) {
    setState(() {
      isShowVideoPreview = val;
    });
  }

  onHdVideo(bool val) {
    setState(() {
      isHdVideo = val;
    });
  }

  onPictureInPicture(bool val) {
    setState(() {
      isPictureInPicture = val;
    });
  }

  onAlwaysShowMeetingControls(bool val) {
    setState(() {
      isAlwaysShowMeetingControls = val;
    });
  }

  onShowClosedCaptioning(bool val) {
    setState(() {
      isShowClosedCaptioning = val;
    });
  }

  onShowMyConnectedTime(bool val) {
    setState(() {
      isShowMyConnectedTime = val;
    });
  }

  onShowNameWhenParticipantsJoin(bool val) {
    setState(() {
      isShowNameWhenParticipantsJoin = val;
    });
  }

  onShowNonVideoParticipants(bool val) {
    setState(() {
      isShowNonVideoParticipants = val;
    });
  }

  onAskToConfirmWhenLeavingAMeeting(bool val) {
    setState(() {
      isAskToConfirmWhenLeavingAMeeting = val;
    });
  }

  onSafeDrivingMode(bool val) {
    setState(() {
      isSafeDrivingMode = val;
    });
  }

  onAutoCopyInviteLink(bool val) {
    setState(() {
      isAutoCopyInviteLink = val;
    });
  }
}
