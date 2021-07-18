import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class _MyAppState extends State<MyApp>{
  DateTime? pickDate;
  const
  @override
  void initState()
  {
    super.initState();
    pickDate=DateTime.now();
  }
  _pickDate(BuildContext context) async
  {
    DateTime? date=await showDatePicker(context: context,
  initialDate: DateTime.now(),
  firstDate: DateTime(DateTime.now().year-5),
  lastDate: DateTime(DateTime.now().year+5)
  );
    if(date!=null)
  {
    setState(() {
      pickDate=date;
    });
  }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
          title: Text('Date: ${pickDate!.day} - ${pickDate!.month} - ${pickDate!.year}'),
            trailing: Icon(Icons.keyboard_arrow_down_rounded),
            onTap: (){
            _pickDate(context);
  },
          )
  ],
  ),
    ),

    );

  }
}