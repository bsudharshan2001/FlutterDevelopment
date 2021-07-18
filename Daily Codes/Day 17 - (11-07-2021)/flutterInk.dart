import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       body: Container(
        color: Colors.grey,
     ),
    ),
    );
  }
}

class MainContent extends StatefulWidget{
  const MainContent({Key? key}) : super(key: key);
  @override
  _MainContentState createState()=> _MainContentState();
}
class _MainContentState extends State<MainContent>{
  String dragDirection="";
  String xPosition="";
  String yPosition="";
  void _onVerticalDragStartHandler(DragStartDetails details)
  {
    dragDirection="VERTICAL";
    xPosition=details.globalPosition.dx.floorToDouble().toString();
    yPosition=details.globalPosition.dy.floorToDouble().toString();
  }
  void _onHorizontalDragStartHandler(DragStartDetails details)
  {
    dragDirection="HORIZONTAL";
    xPosition=details.globalPosition.dx.floorToDouble().toString();
    yPosition=details.globalPosition.dy.floorToDouble().toString();
  }
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      dragStartBehavior: DragStartBehavior.start,
      onVerticalDragStart: _onVerticalDragStartHandler,
      onHorizontalDragStart: _onHorizontalDragStartHandler,
      child: Container(
        child: Column(
          children: [
            Text(dragDirection),
            Text(xPosition),
            Text(yPosition),
          ],
        ),
      ),
    );
  }
}