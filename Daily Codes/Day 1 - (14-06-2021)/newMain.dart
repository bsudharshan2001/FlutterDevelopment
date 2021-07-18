import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
   home: MyApp()
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
          //color: Colors.red,
          padding: EdgeInsets.fromLTRB(10,10,10,10),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(12.5),
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            border: Border.all(
              color: Colors.black87,
              width: 4.5,
              style: BorderStyle.values[1]
            ),
              borderRadius: BorderRadius.all(
              Radius.circular(30.0)
          ),
            boxShadow: [BoxShadow(
              color: Colors.blue,
              blurRadius: 12,
              spreadRadius: 10,
            )],
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.orange
              ],
              begin: Alignment.center,
              end: Alignment.bottomCenter
          )
          ),
          child: Text("Hello",style: TextStyle(
            fontSize: 40,
          ),),
        ),
      ),

    );
  }
}