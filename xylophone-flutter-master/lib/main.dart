// ignore_for_file: must_be_immutable

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // function is builded to reduce line of codes
  void PlaySound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  // for expanded widget
  Expanded buildKey({Color color, int sound}) {
    return Expanded(
      child: ElevatedButton(
        // style: TextButton.styleFrom(
        //   primary: Colors.red),

        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),

        onPressed: () {
          PlaySound(sound);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, sound: 1),
              buildKey(color: Colors.pink, sound: 2),
              buildKey(color: Colors.orange, sound: 3),
              buildKey(color: Colors.purple, sound: 4),
              buildKey(color: Colors.grey, sound: 5),
              buildKey(color: Colors.blue, sound: 6),
            ],
          )),
        ),
      ),
    );
  }
}
