import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class _MyHomePageState extends State<MyHomePage>{
  void selectedItem(BuildContext context){
    switch(item)
    {
      Case 0:
        print('Settings');
        break;
      Case 1:
        print('Privacy');
        break;
      Case 2:
        print('Logout');
        break;
    }
  }
}
@override
Widget buld(BuildContext context){

}