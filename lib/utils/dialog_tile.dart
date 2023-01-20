import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';

class DialogTile extends StatelessWidget {
  DialogTile({required this.text, required this.icon});
  final text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(color: textColor),
        ),
        Icon(icon, color: textColor)
      ],
    );
  }
}
