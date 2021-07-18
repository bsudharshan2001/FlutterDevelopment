import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'listTile.dart';

List<String> getListElements() {
  List<String> words = [];
  generateWordPairs().take(50).forEach((element) {
    words.add(element.first + element.second);
  });
  return words;
}
class getListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var listitems = getListElements();
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return listTile(listitems[index]);
      },
    );
  }
}
