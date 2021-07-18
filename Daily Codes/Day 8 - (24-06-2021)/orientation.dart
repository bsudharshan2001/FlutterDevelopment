import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  Widget portrait()
  {
    return Center(
      child: Text('portrait',style: TextStyle(
          fontSize: 35
      ),),
    );
  }
Widget landscape()
{
  return Center(
    child: Text('landscape',style: TextStyle(
      fontSize: 35
    ),),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery'),
      ),
      body: OrientationBuilder(
        builder: (context,orientation){
          if(orientation==Orientation.portrait)
            {
              return portrait();
            }
          else{
            return landscape();
          }
        },
      )
    );
  }
}