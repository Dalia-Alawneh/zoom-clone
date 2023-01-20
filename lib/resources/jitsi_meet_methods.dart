// import 'package:jitsi_meet/feature_flag/feature_flag.dart';
// import 'package:jitsi_meet/jitsi_meet.dart';
// import 'package:zoomclone/resources/auth_methods.dart';
//
// class JitsiMeetMethods {
//   final AuthMethods _authMethods = AuthMethods();
//
//   void createNewMeeting({required String roomName,
//     required bool isAudioMuted,
//     required bool isVideoMuted,
//   }) async {
//     try {
//       FeatureFlag featureFlag = FeatureFlag();
//       featureFlag.welcomePageEnabled = false;
//       featureFlag.resolution = FeatureFlagVideoResolution
//           .MD_RESOLUTION; // Limit video resolution to 360p
//
//       var options = JitsiMeetingOptions(
//           room: roomName
//       )
//         ..userDisplayName = _authMethods.user.displayName
//         ..userEmail = _authMethods.user.email
//         ..userAvatarURL = _authMethods.user.photoURL
//         ..audioMuted = isAudioMuted
//         ..videoMuted = isVideoMuted;
//
//       await JitsiMeet.joinMeeting(options);
//     } catch (error) {
//       print("error: $error");
//     }
//   }
// }