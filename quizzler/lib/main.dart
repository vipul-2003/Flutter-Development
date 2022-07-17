import 'package:flutter/material.dart';

void main() {
  return runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Quizzler_Page(),
          ),
        ),
      ),
    );
  }
}

class Quizzler_Page extends StatefulWidget {
  const Quizzler_Page({Key? key}) : super(key: key);

  @override
  State<Quizzler_Page> createState() => _Quizzler_PageState();
}

class _Quizzler_PageState extends State<Quizzler_Page> {
  // String texts = 'abc';
  // Expanded buttonKey({String? texts, Color colours, MaterialColor? color, String String}) {
  //   return Expanded(
  //     child: ElevatedButton(
  //       onPressed: null,
  //       child: Text(
  //         'texts',
  //         style: TextStyle(
  //           color: colours,
  //         ),
  //       ),
  //       style: ButtonStyle(
  //         backgroundColor: MaterialStateProperty.all<Color>(colours),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const <Widget>[
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'This is where the questions text will go. ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),

        Divider(),

        Expanded(
          child: ElevatedButton(
            onPressed: null,
            child: Text(
              'True',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50.0,
              ),
            ),
          ),
        ),

        Divider(),

        Expanded(
         
          child: ElevatedButton(
            onPressed: null,
            child: Text(
              'False',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50.0,
              ),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
