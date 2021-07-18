import 'package:flutter/material.dart';
import 'package:flutterdevelopment1/mainDrawer.dart';

void main() => runApp(App());
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String value="";
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
          alert(context);
          },
          child: Text('Click Me'),
        ),
      ),
    );
  }
}

void alert(BuildContext context)
{
  var alertDialog=AlertDialog(
    title: Text('Alert Dialog'),
    content: Text('You can proceed'),
    actions: [
      ElevatedButton(
        onPressed: (){},
        child: Text('Okay'),
      )
    ],
  );
  showDialog(context: context, builder: (BuildContext context){
    return alertDialog;
  }
  );
}