import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs'),
          bottom: TabBar(
            //isScrollable: true,
            indicatorColor: Colors.redAccent,
            indicatorWeight: 0,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.red
            ),
            tabs: [
              Tab(text:'First'),
              Tab(text:'Second'),
              Tab(text:'Third')
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstPage(),
            SecondPage(),
            ThirdPage()
          ],
        ),
      ),

    );
  }
}
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('First Screen Page',style: TextStyle(
            fontSize: 35
          ),),
        ),
      ),

    );
  }
  }
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Second Screen Page',style: TextStyle(
              fontSize: 35
          ),),
        ),
      ),

    );
  }
}
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Third Screen Page',style: TextStyle(
              fontSize: 35
          ),),
        ),
      ),

    );
  }
}