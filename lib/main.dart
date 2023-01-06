import 'package:flutter/material.dart';
import 'package:zoomclone/screens/login_screen.dart';
import './utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Zoom Clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home:  LoginScreen(),
      routes: {
        '/login':(context) => LoginScreen()
      },
    );
  }
}
