import 'package:flutter/material.dart';
class TeamChatScreen extends StatefulWidget {
  const TeamChatScreen({Key? key}) : super(key: key);

  @override
  State<TeamChatScreen> createState() => _TeamChatScreenState();
}

class _TeamChatScreenState extends State<TeamChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: TextFormField(
                textAlign: TextAlign.start,
                scrollPadding: EdgeInsets.all(20),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(80, 80, 80, 1),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    // icon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Image.asset('assets/images/chat.png')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Find Pepole and Start Chatting!")],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 180,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Add contacts"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            )
          ],
        
    );
  }
}
