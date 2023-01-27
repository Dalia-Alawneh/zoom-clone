import 'package:flutter/material.dart';
import 'package:zoomclone/widgets/arrow_card.dart';

import '../utils/colors.dart';
import '../widgets/custom_card.dart';
import '../widgets/divline.dart';

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
            onPressed: () {  },
            child: Icon(Icons.arrow_back_ios_new,color: Colors.white,)
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text(
          'Contacts',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
          children: [
            SizedBox(
              height: 18,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(40, 143, 143, 143)),
              child: Column(
                  children: [
                    ArrowCard(
                      text: "Phone Contats Matching",
                    ),
                    DivLine(),
                    ArrowCard(
                      text: "Contact Requests",
                    ),
                  ]
              ),
            ),
          ]
      ),
    );
  }
}
