import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoomclone/resources/auth_methods.dart';
import 'package:zoomclone/screens/home_screen.dart';
import 'package:zoomclone/screens/login_screen.dart';
import 'package:zoomclone/screens/meeting_screen.dart';
import 'package:zoomclone/screens/video_call_screen.dart';
import './utils/colors.dart';

<<<<<<< HEAD

void main() {
  runApp(const MyApp());
=======
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      title: "Zoom Clone",
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(
            scaffoldBackgroundColor: backgroundColor),
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/video-call': (context) => VideoCallScreen(),
      },
<<<<<<< HEAD
      home: AnimatedSplashScreen(
        splash: 'assets/images/loading.png',
        nextScreen: MyApp(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 60,
        curve: Curves.easeInOut,
        backgroundColor: Color.fromARGB(255, 20, 20, 20),
        
      )));
>>>>>>> 8e3e663056ce4a37ad1e68bf9a1d3245b77d5137
=======
      home: HomeScreen()

  ));
>>>>>>> wafaa
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
          print('hhh');
          return const HomeScreen();
        }
        return const LoginScreen();
      },
    );
  }
}
