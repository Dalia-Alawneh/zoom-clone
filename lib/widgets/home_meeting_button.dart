import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zoomclone/utils/colors.dart';

class HomeMeetingButton extends StatelessWidget {
  const HomeMeetingButton(
      {super.key, required this.onPressed, required this.icon, required this.text, this.color});
  final Function() onPressed;
  final IconData icon;
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(children: [
        Container(
          decoration: BoxDecoration(
            color: color==null? buttonColor: color,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black.withOpacity(0.06),
                offset: Offset(0, 4),
              ),
            ],
          ),
          width: 60,
          height: 60,
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey),
        )
      ]),
    );
  }
}
