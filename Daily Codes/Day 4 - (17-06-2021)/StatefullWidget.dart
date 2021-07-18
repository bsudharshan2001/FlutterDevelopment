import 'package:flutter/material.dart';

void main() {
  runApp(MyPage()
  );

}
class _MyPageState extends State<MyPage> {
  TextEditingController _textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _textEditingController,
            keyboardType: TextInputType.phone,
            obscureText: true,
            maxLength: 10,
            maxLines: 1,
            decoration: InputDecoration(
              hintText: "Enter the name",
              labelText: "Name",
              hintStyle: TextStyle(),
              labelStyle: TextStyle(),
              border: OutlineInputBorder(),
              fillColor: Colors.amberAccent,
              filled: true,
            ),
          )
        ],
      )
    );
  }
}