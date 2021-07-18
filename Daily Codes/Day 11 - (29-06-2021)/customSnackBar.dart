import 'dart:js';
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

class MyApp extends StatelessWidget{
  const MyApp({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Snack Bar'),
      ),
      body: getListView(),
    );
  }
}
List<String> getListElements()
{
  var items=List<String>.generate(100, (index) => 'item $index');
  return items;
}

Widget getListView()
{
  var ListItems=getListElements();
  var listview=ListView.builder(itemBuilder: (context,index)
      {
        return ListTile(
          leading: Icon(Icons.arrow_right_alt),
          title: Text(ListItems[index]),
          onTap: (){
            showSnackBar(context,ListItems[index]);

          },
        );
      }
  );
  return listview;
}
void showSnackBar(BuildContext context,String item)
{
  var snackBar=SnackBar(content: Text('You have tapped $item'),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: (){
        print('Undo Button Pressed');
      },
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}