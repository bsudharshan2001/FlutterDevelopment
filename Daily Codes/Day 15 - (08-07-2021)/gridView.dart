import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> pushList = [];
void main() {
  runApp(MaterialApp(
    home: mainwid(),
  ));
}

class mainwid extends StatefulWidget {
  const mainwid({Key? key}) : super(key: key);

  @override
  _mainwidState createState() => _mainwidState();
}

class _mainwidState extends State<mainwid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Data'),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(5),
          ),
        ],
      ),
    );
  }
}