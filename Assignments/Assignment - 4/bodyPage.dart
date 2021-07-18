import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterdevelopment1/accessValueSecondPage.dart';
import 'package:flutterdevelopment1/calculation.dart';
import 'package:flutterdevelopment1/buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bodyPage extends StatefulWidget{
  @override
  bodyState createState()=> bodyState();
}
const InsideCardColor2 = Colors.white;
const HeightBottomContainer = 75.0;
const ColorBottomContainer = Color(0xFFEB1555);
const CardColor = Color(0xFF1D1E33);
const InsideCardColor = Color(0xFF111328);
const CardColor2 = Colors.white;

enum gender{
  male,female
}
class bodyState extends State<bodyPage>{
  int height=140;
  int weight=50;
  int age =20;
  gender genderSelect=gender.male;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      genderSelect = gender.male;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: genderSelect == gender.male
                          ? CardColor
                          : InsideCardColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                          color: genderSelect == gender.male
                              ? CardColor2
                              : InsideCardColor2,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(fontSize: 18.0, color: genderSelect == gender.male ? Colors.white :  Color(0xFF8D8E98),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      genderSelect = gender.female;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: genderSelect == gender.female
                          ? CardColor
                          : InsideCardColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                          color: genderSelect == gender.female
                              ? CardColor2
                              : InsideCardColor2,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(fontSize: 18.0, color: genderSelect == gender.female ? Colors.white :  Color(0xFF8D8E98),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: new Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: CardColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: TextStyle(fontSize: 18.0, color: Colors.white30,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900,color: Colors.white),
                    ),
                    Text(
                      'cm',
                      style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98),),
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xFF8D8E98),
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape:
                    RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape:
                    RoundSliderThumbShape(enabledThumbRadius: 30.0),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: new Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: CardColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: TextStyle(fontSize: 18.0, color: Colors.white30,),
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900,color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          button(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                if (weight > 30) weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          button(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: new Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: CardColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: TextStyle(fontSize: 18.0, color: Colors.white30,),
                      ),
                      Text(
                        age.toString(),
                        style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900,color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          button(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                if (age > 1)
                                  age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          button(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => calculation(
              height: height, weight: weight,
            )),
            );
          },
          child: Container(
            child: Center(
              child: Text(
                "CALCULATE YOUR BMI",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold,),
              ),
            ),
            margin: EdgeInsets.only(top: 8.0),
            color: ColorBottomContainer,
            height: HeightBottomContainer,
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 18.0),
          ),
        ),
      ],
    );
  }
}