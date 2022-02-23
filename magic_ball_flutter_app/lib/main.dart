import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ask Me Anything"),
          backgroundColor: Colors.blue[900],
        ),
        body: const magicBall(),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class magicBall extends StatefulWidget {
  const magicBall({Key? key}) : super(key: key);

  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {

  int BallNumber = 1 ;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
              // print('I got it ');
              print('$BallNumber');
              setState(() {
                BallNumber = Random().nextInt(5)+1;
              });
            },
            child: Image.asset('images/ball$BallNumber.png'),
          ),
        ),
      ],
    ));
  }
}
