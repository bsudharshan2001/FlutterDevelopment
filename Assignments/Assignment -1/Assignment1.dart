import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MyAssignment()
  );
}

class MyAssignment extends StatelessWidget{
  const MyAssignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("B Sudharshan's Assignment",
          style: TextStyle(
            fontFamily: 'Lobster',
            color: Colors.blueAccent
          ) ,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/1200px-Manchester_City_FC_badge.svg.png'),
                ),
                Text(
                  'Manchester City',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 18,
                    color: Colors.black87
                  ),
                ),
                Text(
                  'Kings of England',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Pacifico',
                    color: Colors.black87
                  ),
                ),
                SizedBox(
                  height: 18,
                  width: 250,
                  child: Divider(
                    color: Colors.black87,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 14,horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email_rounded,
                      color: Colors.black87,
                    ),
                    title: Text(
                      'mancity@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 18
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 14,horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.assignment_ind_outlined,
                      color: Colors.black87,
                    ),
                    title: Text(
                      '@mancity',
                      style: TextStyle(
                        fontFamily: 'Lobster',
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ),
      )
    );
  }
}
