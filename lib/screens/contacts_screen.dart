import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(tabs: [
                  Tab(
                    text: 'Contacts',
                  ),
                  Tab(
                    text: 'Channels',
                  )
                ])
              ],
            ),
          ),
          body: TabBarView(
            children: [Contacts(), Channels()],
          )),
    );
  }
}

//Contacts Screen
class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  List<String> Starred = ['Ahmad', 'Mohammad', 'starred'];
  String InitialValue = "starred";
  List<String> ext = ['External Contacts', ''];
  String InitialValue1 = "External Contacts";
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              textAlign: TextAlign.start,
              scrollPadding: EdgeInsets.all(20),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(191, 83, 83, 83),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search Contacts",
                  contentPadding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "My Contacts",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          DropdownButtonFormField(
              //decoration: InputDecoration(prefixIcon: Icon(Icons.arrow_downward)),
              value: InitialValue,
              isExpanded: true,
              items: Starred.map((e) => DropdownMenuItem(
                    alignment: AlignmentDirectional(-.9, 0),
                    child: Text("$e"),
                    value: e,
                  )).toList(),
              onChanged: (e) {
                setState(() {
                  InitialValue = e.toString();
                });
              }),
          DropdownButtonFormField(
              //decoration: InputDecoration(prefixIcon: Icon(Icons.arrow_downward)),
              value: InitialValue1,
              isExpanded: true,
              items: ext
                  .map((e) => DropdownMenuItem(
                        alignment: AlignmentDirectional(-.9, 0),
                        child: Text("$e"),
                        value: e,
                      ))
                  .toList(),
              onChanged: (e) {
                setState(() {
                  InitialValue1 = e.toString();
                });
              })
        ],
      ),
    );
  }
}

//channel screen ==>

class Channels extends StatefulWidget {
  const Channels({Key? key}) : super(key: key);

  @override
  State<Channels> createState() => _ChannelsState();
}

class _ChannelsState extends State<Channels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(
          height: 15,
        ),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              textAlign: TextAlign.start,
              scrollPadding: EdgeInsets.all(20),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(191, 83, 83, 83),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search Contacts",
                  contentPadding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        
        SizedBox(
          height: 50,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                child: Image.asset(
                  "assets/images/man.png",
                  // "assets/images/loading.png",
                ),
                height: 200,
                width: 300),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "There are no Channels created yet.",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
