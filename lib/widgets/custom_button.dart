import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zoomclone/utils/colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, required this.onPressed, required this.bcolor, required this.textBColor});
  final Color bcolor;
  final Color textBColor;
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 17, color: textBColor),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: bcolor,
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: bcolor)
            )),
      ),
    );
  }
}