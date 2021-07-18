import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        elevation: 10,
        shadowColor: Colors.blue,
        centerTitle: true,
        title: Text('RoundedAppBar'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(colors: [
            Colors.lightBlueAccent,
            Colors.lightBlue,
            Colors.blue,
            Colors.blueAccent
          ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
        ),
        leading: IconButton(
          icon: Icon(Icons.account_circle_outlined),
          onPressed: () {},
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_circle))
        ],
      ),
    );
  }
}
