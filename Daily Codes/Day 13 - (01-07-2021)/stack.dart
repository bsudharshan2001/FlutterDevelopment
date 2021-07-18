import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 700,
          color: Colors.grey,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blueAccent,
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}