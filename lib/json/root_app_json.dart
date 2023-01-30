import 'package:flutter/material.dart';
import '../utils/colors.dart';

String profileMeUrl =
    "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80";

String profileOtherUrl =
    "https://www.whatsappprofiledpimages.com/wp-content/uploads/2021/11/alone-Best-Dp-Profile-Images-For-Instagram-photo.gif";

class ButtomBar extends StatelessWidget {
  Icon icon;
  String txt;
  void Function() onPressed;
  ButtomBar({
    required this.icon, required this.txt, required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          IconButton(
              onPressed: onPressed,
              icon: icon),
          Text(txt ,style: TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),)
        ]
    );
  }
}