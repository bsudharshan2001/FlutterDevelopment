import 'package:flutterdevelopment1/bodyPage.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class calculation extends StatefulWidget {
  const calculation({
    required this.height, required this.weight
  });
  final int weight;
  final int height;

  @override
  calculationState createState() => calculationState();
}

class calculationState extends State<calculation> {
  String interpretation = '';
  double _bmi = 0;
  String bmi = '';
  String result = '';

  void initState() {
    super.initState();
    bmi = calculateBMI();
    result = getResult();
    interpretation = getInterpretation();
  }

  String calculateBMI() {
    _bmi = widget.weight / pow(widget.height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try exercising more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!.';
    } else {
      return 'You have lower than normal body weight. You can eat bit more.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff11163A),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        leading: Icon(Icons.sort_rounded),
        backgroundColor: Color(0xff11163A),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Your Result",
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: CardColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        '$result',
                        style: TextStyle(color: Color(0xFF24D876),  fontSize: 22.0,  fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '$bmi',
                      style: TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 25.0,),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Normal BMI range:",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22.0,color: Colors.white30),
                        ),
                        SizedBox(height: 5.0,),
                        Text(
                          "18.5 - 25 kg/m2",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22.0,color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '$interpretation',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22.0,color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Color(0xFF1D223A),
                      margin: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          "Save Result",style: TextStyle(
                            color: Colors.white,fontSize: 18.0
                        ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => bodyPage()
              ));
            },
            child: Container(
              child: Center(
                child: Text(
                  "CALCULATE BMI AGAIN",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold,),
                ),
              ),
              padding: EdgeInsets.only(bottom: 20.0),
              margin: EdgeInsets.only(top: 10.0),
              color: ColorBottomContainer,
              height: HeightBottomContainer,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}