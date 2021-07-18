import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  double value=50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: value.round().toString(),
                  value: value,
                  onChanged: (val){
                    setState((){
                      value=val;
                    }
                    );

                  },
                )
              ],
            ),
          ),

        )
    );
  }
}