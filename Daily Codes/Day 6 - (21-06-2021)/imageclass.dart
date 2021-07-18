import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Widget",),
        ),
        body: Image(
          image: AssetImage('images/03b6ccb5b895e02fa85e06a86a04a68244caa9c3.jpg'),
        )
      ),
    );
  }
}