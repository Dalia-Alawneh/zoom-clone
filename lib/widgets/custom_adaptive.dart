import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';

class CustomAdaptive extends StatelessWidget {
  final String text;
  final String secondaryText;
  final bool isMute;
  final Function(bool) onChange;
  const CustomAdaptive({
    Key? key,
    required this.text,
    required this.isMute,
    required this.onChange,
    required this.secondaryText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: secondaryBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(secondaryText,
                    style: TextStyle(
                    color: Colors.grey),
                ),
              ),],
          ),
          Switch.adaptive(
            value: isMute,
            onChanged: onChange,
          ),
        ],
      ),
    );
  }
}