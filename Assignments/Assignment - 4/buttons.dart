import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class button extends StatelessWidget {
  button({
    required this.icon, required this.onPressed}
      );
  final Function onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,color: Colors.white,),
      onPressed: () {
        onPressed();
      },
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 54.0,
        height: 54.0,
      ),
      elevation: 10.0,
    );
  }
}
