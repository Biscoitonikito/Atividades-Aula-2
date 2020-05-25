import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Center(
            child: Row(                
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: <Widget>[
                buildContainer('Verdadeiro', Colors.green),
              
                buildContainer('Falso', Colors.red),
              
                buildContainer('Não Sei', Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainer(String text, Color color) {
    return Container(
              width: 75,
              height: 250,
              color: color,
              child: Text(text),        
            );
  }
}
