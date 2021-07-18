import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'listView.dart';
import 'likedPage.dart';

List<String> likedList = [];
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myAssignment(),
  )
  );
}

class myAssignment extends StatefulWidget {
  const myAssignment({Key? key}) : super(key: key);
  @override
  _myAssignmentState createState() => _myAssignmentState();
}
class _myAssignmentState extends State<myAssignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'StartUp Name Generator',
            style: TextStyle(
                fontFamily: 'Lobster'
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.lightBlueAccent,
              Colors.lightBlue,
              Colors.blue,
              Colors.blueAccent
            ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft
                )
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                likedList = [];
              },
              icon: Icon(
                Icons.list,
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.done,
            color: Colors.white,
          ),
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            if (likedList.length == 4) {
              print('Must Pick only 4 Words');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LikedPage(likedList)));
            } else {
              alert(context);
              print(likedList);
            }
          },
        ),
        body: getListview());
  }
}

void alert(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text('Warning'),
    content: Text('You must select exactly 4 items'),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Okay')),
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
      );
}
