import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 20,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.red
            ),
            tabs: [
              Tab(icon: Icon(Icons.access_alarms_rounded),),
              Tab(icon: Icon(Icons.timer_rounded),),
              Tab(icon: Icon(Icons.hourglass_bottom_rounded),)
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.access_alarms_rounded,size: 50,),
            Icon(Icons.timer_rounded,size: 50,),
            Icon(Icons.hourglass_bottom_rounded,size: 50,)
          ],
        ),
      ),

    );
  }
}