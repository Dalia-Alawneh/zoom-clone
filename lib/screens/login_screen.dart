import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zoomclone/resources/auth_methods.dart';
import 'package:zoomclone/utils/colors.dart';
import 'package:zoomclone/widgets/custom_button.dart';
  
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Start OR222 join a meeting",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Image.asset('assets/images/onboarding.jpg'),
        ),
        CustomButton(
          text: 'Google Sign In',
          onPressed: () async {
            bool res = await _authMethods.SignInWithGoogle(context);
            if (res) {
              Navigator.pushNamed(context, '/home');
            }
          }, bcolor: buttonColor, textBColor: Colors.white,
        )
      ]),
    );
  }
}
