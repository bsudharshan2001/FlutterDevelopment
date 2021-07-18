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
          color: Color(0xffff0000),
            height: 40,
            width: 320,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              verticalDirection: VerticalDirection.down,
              textDirection: TextDirection.ltr,
              mainAxisSize: MainAxisSize.max,
              children: [
                FlatButton(onPressed: (){}, child: Text("Hello"),color: Colors.blue,padding: EdgeInsets.all(5),),
                FlatButton(onPressed: (){}, child: Text("Man"),color: Colors.blue,padding: EdgeInsets.all(5),),
                FlatButton(onPressed: (){}, child: Text("How are you?"),color: Colors.blue,padding: EdgeInsets.all(5)),
              ],
            ),
          ),
        ),
    );
  }
}