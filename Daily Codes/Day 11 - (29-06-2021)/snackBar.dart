import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Snack Bar'),
          onPressed: (){
            SnackBar mySnackBar=SnackBar(content: Text('Snack Bar Sample'),
            backgroundColor: Colors.blueAccent,
              duration: Duration(seconds: 4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide(
                  color: Colors.black87,
                  width: 3
                )
              ),
              behavior: SnackBarBehavior.floating,
            );
            ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
          }
        ),
      ),
    );

}
}