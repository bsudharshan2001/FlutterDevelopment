import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 10,
        shadowColor: Colors.lightBlueAccent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Colors.lightBlueAccent,
                Colors.lightBlue,
                Colors.blue,
                Colors.blueAccent
              ],
                begin: Alignment.bottomRight,
              end: Alignment.topLeft
            )
                image: DecorationImage(
              image: NetworkImage('')
          )
          ),
        ),
        title: Text('My App'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.account_circle_outlined),
          onPressed: (){},
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(
      Icons.search
    )),
    IconButton(onPressed: (){}, icon: Icon(
    Icons.add_circle
    ))

        ],
      ),

    );
  }
}