import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Assignment3.dart';
class listTile extends StatefulWidget {
  listTile(@required this.text);
  String text;
  @override
  _listTileState createState() => _listTileState(text);
}

class _listTileState extends State<listTile> {
  bool _likedText = true;
  String text;
  _listTileState(this.text);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: IconButton(
        icon: Icon(_likedText ?
        Icons.favorite_border : Icons.favorite,
          color: Colors.blue,
        ),
        onPressed: ()
        {
          setState(()
          {
            _likedText = !_likedText;
          });
          if(!_likedText)
          {
            likedList.add(text);
            print(likedList);
          }
          else
            {
            likedList.remove(text);
            print(likedList);
          }
        },
      ),
    );
  }
}
