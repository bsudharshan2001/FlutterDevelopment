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
      body: Center(
        child: Container(
          child: SafeArea(
            child: Column(
              children: [
                Text("Hello"),
                Text("Man"),
                Text("How are you?")
              ],
            ),
          ),
        ),
      ),
    );
  }
}