import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
            children: [
              Expanded(

                  flex: 3,
                  child: Container(padding: EdgeInsets.all(30),color: Colors.blue,child: Text("1"),)),
              Expanded(
                  flex: 3,
                  child: Container(padding: EdgeInsets.all(30),color: Colors.orange,child: Text("1"),)),
              Expanded(
                  flex: 3,
                  child: Container(padding: EdgeInsets.all(30),color: Colors.red,child: Text("1"),))
            ],
          ),

      ),
    );
  }
}