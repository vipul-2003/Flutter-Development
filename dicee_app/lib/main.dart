import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  /*
  to the dice number we create a function to avoid mess
  void changedicenumber() 
  {
    leftdicenumber = Random().nextInt(6) + 1;
    rightdicenumber = Random().nextInt(6) + 1;
  }
*/

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          //   Image(
          //   width: 200.0,
          //   height: 200.0,
          //   image: AssetImage("images/dice1.png"),
          //   ),

          Expanded(
            //by default flex set to 1
            //flex: 1, // it is used to set the size of object to 2 twice big
            // as that of another expanded widget image (dice2.png)
            // but not that much big that both of them fills the screen

            child: TextButton(
              onPressed: () {
                setState(() {
                  // challenge
                  //   changedicenumber();

                  leftdicenumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),

            /*Image(
            image: AssetImage('images/dice1.png'),  ),
          */
          ),

          Expanded(
            // flex: 1,

            child: TextButton(
              onPressed: () {
                setState(() {
                  // Challenge
                  rightdicenumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
