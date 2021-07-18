import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}
class _HomePageState extends State<HomePage> {
  double height = 300;
  double width = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: height,
              width: width,
              color: Colors.black,
              duration: Duration(milliseconds: 1000),
              curve: Curves.fastOutSlowIn,
            ),
            FlatButton(
                onPressed: (){
              setState(() {
                height=height-150;
                width=width-150;
              });
            },
                child:Text("Click") )
          ],
        ),
      ),
    );
  }
}
