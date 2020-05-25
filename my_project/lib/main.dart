import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Row(                
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              crossAxisAlignment: CrossAxisAlignment.stretch, 
              children: <Widget>[
                buildContainer1(Colors.red),
              
                Column(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildContainer2(Colors.yellow),
                  buildContainer2(Colors.yellow[700]),
                ],),
              
                buildContainer1(Colors.blue),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainer1(Color color) {
    return Container(
      width: 100,
      height: 100,
      color: color,           
      );
  }

  Container buildContainer2(Color color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.0),
      width: 100,
      height: 100,
      color: color,           
      );
  }
}
