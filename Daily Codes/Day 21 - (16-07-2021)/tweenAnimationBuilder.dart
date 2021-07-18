import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  const HomePage({Key?key}):super(key: key);
  @override
  _HomePageState createState()=> _HomePageState();
}
class _HomePageState extends State<HomePage> {
  double height = 300;
  //double width = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(builder: (context,double value,child)
       =>Center(
          child: Image.asset('name',height: value,),
      ),
        duration: Duration(milliseconds: 1000),
        tween: Tween<double>(begin: 50,end: 200),
        onEnd: (){
        setState(() {
          height=height==200?50:200;
        });
        },
      ),
    );
  }
}
