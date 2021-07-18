import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    var _count=0;
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_count.toString(),style: TextStyle(
                  fontSize: 35
                ),),
                InkWell(
                  splashColor: Colors.red,
                  highlightColor: Colors.blueAccent.withOpacity(1),
                  hoverColor: Colors.yellow,
                  child: Icon(Icons.add_circle,size: 55,),
                  onTap: (){
                    print('On Tap');
                    _count+=1;
                  },

                )
              ],
            ),
          ),

        )
    );
  }
}