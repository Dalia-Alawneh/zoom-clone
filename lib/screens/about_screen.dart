import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';
import 'package:zoomclone/widgets/custom_card2.dart';
import 'package:zoomclone/widgets/divline.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: Text(
          "About",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: ListView( children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: secondaryBackgroundColor),
          child: GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Verison',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  '5.12.0 (4802)',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: .3,
          thickness: 1,
        ),
        Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: secondaryBackgroundColor),
            child: CustomCard2(
              text: "Send Feedback",
              secondaryText: '',
            )),
        Divider(
          height: .1,
          thickness: 1,
        ),
        Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: secondaryBackgroundColor),
            child: CustomCard2(
              text: "Report Problem",
              secondaryText: '',
            )),
        Divider(
          height: .1,
          thickness: 1,
        ),
        Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: secondaryBackgroundColor),
            child: CustomCard2(
              text: "Tell Others About Zoom",
              secondaryText: '',
            )),
        Divider(
          height: .1,
          thickness: 1,
        ),
        Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: secondaryBackgroundColor),
            child: CustomCard2(
              text: "Rate Zoom in the App Store",
              secondaryText: '',
            )),
        Divider(
          height: .1,
          thickness: 1,
        ),
        Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: secondaryBackgroundColor),
            child: CustomCard2(
              text: "Privacy Statment",
              secondaryText: '',
            )),
        Divider(
          height: .1,
          thickness: 1,
        ),
        Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: secondaryBackgroundColor),
            child: CustomCard2(
              text: "Terms of Services",
              secondaryText: '',
            )),
        Divider(
          height: .1,
          thickness: 1,
        ),
        Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(color: secondaryBackgroundColor),
            child: CustomCard2(
              text: "Community Standards",
              secondaryText: '',
            )),
        SizedBox(height: 15),
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text(
                      "Open Source Software  ",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: fun,
                  ),
                ),
                Icon(
                  Icons.open_in_new,
                  color: Colors.blue,
                  size: 14,
                )
              ],
            ),
            Row()
          ],
        )
      ]),
    );
  }
}

Future<void> fun() async {
  const url = "https://www.zoom.us";
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
