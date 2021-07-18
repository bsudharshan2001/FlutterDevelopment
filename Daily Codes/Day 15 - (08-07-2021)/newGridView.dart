import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> pushList = [];
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
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
          backgroundColor: Colors.black87,
        title: Text('Theme Data',style: TextStyle(
          fontFamily: 'Lobster'
        ),),
    ),
     body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 3,
     ),
         itemBuilder: (ctx,index){
       return Container(
         color: Colors.black87,
         margin: EdgeInsets.all(5),
         child: Center(
           child: Text(index.toString(),style: TextStyle(
             fontSize: 18,
             color: Colors.white
           ),),
         ),
       );
         }),
    );
  }
}