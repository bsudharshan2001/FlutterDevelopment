import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
              child: Container(
                color: Color(0xff8D43B3),
                child: Center(
                  child: Text("#8D43B3",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),
                      textAlign: TextAlign.center),
                ),
              )
          ),
          Expanded(
            flex: 4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      color: Color(0xff2AA650),
                      child: Center(
                        child: Text("#2AA650",style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                        ),
                            textAlign: TextAlign.center),
                      ),
                    )
                ),
                Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                              color: Color(0xff58AAE8),
                              child: Center(
                                child: Text("#58AAE8",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                                    textAlign: TextAlign.center),
                              ),
                            )
                        ),
                        Expanded(
                            flex: 8,
                            child: Container(
                              color: Color(0xffE73E33),
                              child: Center(
                                child: Text("#E73E33",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                                ),
                                  textAlign: TextAlign.center
                                  ,
                                ),
                              ),
                            )
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
              child: Container(
                color: Color(0xfffff900),
                child: Center(
                  child: Text("#FFF900",style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15
                  ), textAlign: TextAlign.center
                  ),
                ),
              )
          ),
        ],
      )
    );
  }
}