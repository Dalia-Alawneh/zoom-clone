import 'package:flutter/material.dart';

import '../utils/colors.dart';

class NewMeetingOption extends StatelessWidget {
  final String text;
  final bool isMute;
  final Function(bool) onChange;
  const NewMeetingOption({
    Key? key,
    required this.text,
    required this.isMute,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
        Switch.adaptive(
          value: isMute,
          onChanged: onChange,
        ),
      ],
    );
  }
}
