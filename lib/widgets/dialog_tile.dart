
import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';

class DialogTile extends StatelessWidget {
  DialogTile({required this.text, required this.icon, this.onTap});
  final text;
  final icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color: textColor),
          ),
          Icon(icon, color: textColor)
        ],
      ),
    );
  }
}
