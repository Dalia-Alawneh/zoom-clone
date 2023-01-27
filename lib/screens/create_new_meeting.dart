import 'dart:math';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';
import '../json/root_app_json.dart';
import 'package:zoomclone/main.dart';

class CreateNewMeeting extends StatefulWidget {
  final List<CameraDescription>? cameras;
  const CreateNewMeeting({this.cameras, Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CreateNewMeeting> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.cameras![0],
      ResolutionPreset.max,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: getAppBar(),
      bottomNavigationBar: getFooter(),
      body: getBodyWithCamera(),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: headerAndFooter,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.volume_mute,
                color: grey,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.camera_alt,
                color: grey,
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.security_outlined,
                color: green,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Zoom",
                style: TextStyle(
                    fontSize: 17, color: grey, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 20,
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: red, borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
              child: Text(
                "Leave",
                style: TextStyle(
                    fontSize: 15, color: grey, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getFooter() {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: headerAndFooter,
          border: Border(
              top: BorderSide(width: 2, color: black.withOpacity(0.06)))),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(bottomItems.length, (index) {
              return Column(
                children: [
                  Icon(
                    bottomItems[index],
                    color: colorItems[index],
                    size: sizedItems[index],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    textItems[index],
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: colorItems[index]),
                  )
                ],
              );
            })),
      ),
    );
  }

  Widget getBodyWithCamera() {
    if (!controller.value.isInitialized) {
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SizedBox(
            height: 595,
            width: 420,
            child: CameraPreview(controller),
          ),
        ),
      ),
    ]);
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              width: 120,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(profileMeUrl), fit: BoxFit.cover),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(profileOtherUrl), fit: BoxFit.cover),
              ),
            ),
          )
        ],
      ),
    );
  }
}
