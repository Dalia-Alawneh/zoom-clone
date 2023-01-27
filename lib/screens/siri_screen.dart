import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';

class SiriScreen extends StatefulWidget {
  const SiriScreen({Key? key}) : super(key: key);

  @override
  State<SiriScreen> createState() => _SiriScreenState();
}

class _SiriScreenState extends State<SiriScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text(
          "Siri Shortcuts",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(
                'Use short phrases added to Siri to do tasks faster',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white54,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              margin: const EdgeInsets.all(13),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://t3.ftcdn.net/jpg/00/86/56/12/240_F_86561234_8HJdzg2iBlPap18K38mbyetKfdw1oNrm.jpg")),
                borderRadius: BorderRadius.circular(20),
                //     color: Colors.blue
              ),
              child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text("Join the Next Meeting",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Container(
                                    child: OutlinedButton(
                                  style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          const BorderSide(
                                              color: Colors.white, width: .7)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ))),
                                  onPressed: () {
                                    //print("[p]");
                                  },
                                  child: const Text(
                                    "Add to Siri",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 5,
          ),
          Container(
              margin: const EdgeInsets.all(13),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://t3.ftcdn.net/jpg/01/47/61/40/240_F_147614099_3Bnup1ByI3CQ04x3Tr59rV7G6kGzrOal.jpg")),
                borderRadius: BorderRadius.circular(20),
                //     color: Colors.blue
              ),
              child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text("View Today's Meetings",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Container(
                                    child: OutlinedButton(
                                  style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          const BorderSide(
                                              color: Colors.white, width: .7)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ))),
                                  onPressed: () {
                                    //print("[p]");
                                  },
                                  child: const Text(
                                    "Add to Siri",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 5,
          ),
          Container(
              margin: const EdgeInsets.all(13),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://t4.ftcdn.net/jpg/03/70/03/19/240_F_370031908_KirYulYc1qAD9hi3gG4idyaN1w2scnQm.jpg")),
                borderRadius: BorderRadius.circular(20),
                //     color: Colors.blue
              ),
              child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text("Start My Personal Meeting",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Container(
                                    child: OutlinedButton(
                                  style: ButtonStyle(
                                      side: MaterialStateProperty.all(
                                          const BorderSide(
                                              color: Colors.white, width: .7)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ))),
                                  onPressed: () {
                                    //print("[p]");
                                  },
                                  child: const Text(
                                    "Add to Siri",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
