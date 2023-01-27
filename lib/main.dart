import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:camera/camera.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoomclone/resources/auth_methods.dart';
import 'package:zoomclone/screens/home_screen.dart';
import 'package:zoomclone/screens/login_screen.dart';
import 'package:zoomclone/screens/start_new_meeting.dart';
import 'package:zoomclone/screens/create_new_meeting.dart';
import './utils/colors.dart';
import 'screens/schedual_meeting_screen.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  await Firebase.initializeApp();
  runApp(MaterialApp(
      title: "Zoom",
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
      home: AnimatedSplashScreen(
        splash: 'assets/images/loading.png',
        nextScreen: MyApp(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 60,
        curve: Curves.easeInOut,
        backgroundColor: Color.fromARGB(255, 20, 20, 20),
      )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthMethods().authChanges,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData) {
          return const HomeScreen();
        }
        return const StartAMeetingScreen();
      },
    );
  }
}
