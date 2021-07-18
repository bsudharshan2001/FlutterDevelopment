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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MediaQuery'),
        ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.3,
            height: MediaQuery.of(context).size.height*0.3,
            decoration: BoxDecoration(
              color: Colors.blueAccent
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.3,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent
            ),
          )
        ],
      ),
    );
  }
}