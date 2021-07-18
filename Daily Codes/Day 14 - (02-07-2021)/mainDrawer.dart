
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget{
  const MainDrawer({Key?key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/.jpg'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  Text('B Sudharshan',style: TextStyle(
                    fontFamily: 'Lobster'
                  ),),
                  SizedBox(
                    height: 3,
                  ),
                  Text('Gamer',style: TextStyle(
                    fontFamily: 'Lobster'
                  ),)
                ],
              ),

            ),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_rounded),
            title: Text("Profile",style: TextStyle(
              fontSize: 15,
                fontFamily: 'Pacifico'
            ),),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings_rounded),
            title: Text("Profile",style: TextStyle(
              fontSize: 15,
                fontFamily: 'Pacifico'
            ),),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text("Profile",style: TextStyle(
              fontSize: 15,
              fontFamily: 'Pacifico'
            ),),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}