import 'package:flutter/cupertino.dart';
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
  Widget portrait()
  {
    return Center(
      child: Text('portrait',style: TextStyle(
          fontSize: 35
      ),),
    );
  }
  Widget landscape()
  {
    return Center(
      child: Text('landscape',style: TextStyle(
          fontSize: 35
      ),),
    );
  }
  @override
  Widget build(BuildContext context) {
    double height=(MediaQuery.of(context).padding.top+kToolbarHeight)/2;
    return Scaffold(
        appBar: AppBar(
          title: Text('MediaQuery'),
        ),
        body: OrientationBuilder(
          builder: (context,orientation){
            if(orientation==Orientation.portrait)
            {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.5-height,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent
                      ),
                    )
                  ]
              );
            }
            else{
              return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.5,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent
                      ),
                    )
                  ]
              );
            }
          },
        )
    );
  }
}