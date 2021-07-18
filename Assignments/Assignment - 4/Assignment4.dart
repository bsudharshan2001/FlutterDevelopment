import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterdevelopment1/accessValueSecondPage.dart';
import 'package:flutterdevelopment1/bodyPage.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Assignment4(),
    )
  );
}

class Assignment4 extends StatelessWidget {
  const Assignment4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          'BMI CALCULATOR',style: TextStyle(
           fontSize: 16,
          color: Colors.white
        ),
        ),
        backgroundColor: Color(0xff11163A),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.sort_rounded),
          color: Colors.white,
          iconSize: 35,
        ),
        centerTitle: true,
        elevation: 20,
        shadowColor: Colors.black87,
      ),
      backgroundColor: Color(0xff11163A),
      body: bodyPage(),
    );
  }
}


