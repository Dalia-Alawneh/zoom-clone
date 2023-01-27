import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/colors.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  MyAppbar({super.key, this.actions, this.text});
  List<Widget>? actions;
  String ?text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(text??''),
        centerTitle: true,
        actions: actions);
  }
  @override
  Size get preferredSize => const Size.fromHeight(60);
}
