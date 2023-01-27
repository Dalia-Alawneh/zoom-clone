import 'package:flutter/material.dart';

import '../utils/colors.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  var _color = Color.fromARGB(40, 143, 143, 143);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text('Manage Account'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(25),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: _color),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _color = Color.fromARGB(40, 160, 160, 160);
            });
          },
          child: Text(
            'Delete Account',
            style: TextStyle(
                color: Colors.red.shade400,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
