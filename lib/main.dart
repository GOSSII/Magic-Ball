import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}


class _BallState extends State<Ball> {
  int leftDiceNumber = 1;

  void returnDiceFace(String face){
    setState(() {
      leftDiceNumber = Random().nextInt(5) +1;
      print('$face button got Pressed. $leftDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                returnDiceFace("Left");
              },
              child: Image.asset('images/ball$leftDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
