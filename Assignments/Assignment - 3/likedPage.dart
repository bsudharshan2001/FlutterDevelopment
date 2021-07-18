import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class LikedPage extends StatelessWidget {
  LikedPage(this.word);
  List<String> word;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liked Words'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed:(){
          Navigator.pop(context);
        },
        ),
      ),
      body: ListView(
        children: [
          ListTile(title:Text(word[0]),),
          ListTile(title:Text(word[1]),),
          ListTile(title:Text(word[2]),),
          ListTile(title:Text(word[3]),),
        ],
      ),
    );
  }
}
