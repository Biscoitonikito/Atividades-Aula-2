import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  buildContainer(Colors.green[900], 55),
                  buildContainer(Colors.green[600], 55),
                ],
              ),
              Container(
                color: Colors.green[300],
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    buildCard(10, 10, Icons.gps_fixed, Colors.green[300], 40),
                    buildCard(10, 10, Icons.call, Colors.green[300], 40),
                    buildCard(10, 10, Icons.email, Colors.green[300], 40),
                    buildCard(10, 10, Icons.calendar_today, Colors.green[300], 40),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 100),
                child:Column(
                  children: <Widget>[
                    buildIcon(0, 35, Icons.people, Colors.grey, 70),
                    Text("Guilherme Sousa\n Da Silva", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                  ],
                )
              )


            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(Color color, double width) {
    return Container(
      width: width,
      color: color,          
      );
  }

  Card buildCard(double vertical, double horizontal, IconData icone, Color cor, double tamanho){
    return Card(
      color: cor,
      elevation: 0,
      margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child:Icon(icone, size: tamanho, )
    );
  }

  Card buildIcon(double vertical, double horizontal, IconData icone, Color cor, double tamanho){
    return Card(
      elevation: 0,
      margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child:CircleAvatar(child:Icon(icone, size: tamanho, color: Colors.black,), radius: 50, backgroundColor: Colors.green[100])
      );
  }
}