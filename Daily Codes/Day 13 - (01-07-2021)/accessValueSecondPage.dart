import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String value="";
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Click the button to move to the SubPage'),
            TextField(
              onChanged: (text){
                value=text;
              },
            ),
            RaisedButton(
              textColor: Colors.black87,
              color: Colors.blueAccent,
              child: Text('Go to SubPage'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>subPage(value: value)));
              },
            )
          ],
        ),
      ),
    );
  }
}
class subPage extends StatelessWidget{
  final value;
  const subPage({Key?key,@required this.value}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Click button to go back to the Main Page'),
            Text('The value from the Main Page is $value'),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Back to Main Page'),
              onPressed: (){
                Navigator.pop(context);
              },
            )

          ],
        ),
      ),
    );
  }
}