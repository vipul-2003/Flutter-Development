import 'package:flutter/material.dart';

void main() => runApp(Hello_Rectangle());

class Hello_Rectangle extends StatelessWidget {
  const Hello_Rectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello_Rectangle'),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.greenAccent,
      height: 400,
      width: 300,
      child: Center(
        child: Text(
          'hello there',
          style: TextStyle(fontSize: 40.0),
          textAlign: TextAlign.center,
        ),
      ),
    ));
  }
}
