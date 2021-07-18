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
        child: Center(
          child: Card(
            color: Colors.blue,
            child: Container(
              height: 100,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Hello Guys',style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Lobster'
                  ),)
                ],
              ),
            ),
          ),
        )

      ),
    );
  }
}