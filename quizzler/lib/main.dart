import 'package:flutter/material.dart';

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: QuizPage(),
            ),
          ),
        ));
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
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
                'This is where the question text will go.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
            
            backgroundColor: MaterialStateProperty.all(Colors.green),

          
            
            )
            
            onPressed: () {},
            
            
            child: Text(
              'True',
                style: TextStyle(
                  color: Colors.green,
                ),
                ),

         
              
            ),
          ),


          Expanded(
          child: ElevatedButton(
            
            onPressed: null,
            child: Text(
              'False',
                style: TextStyle(
                  color: Colors.red,
                ),
                ),

         
              
            ),
          ),
        
      ],
    );
  }
}
