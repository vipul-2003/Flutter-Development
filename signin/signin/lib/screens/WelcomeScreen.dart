import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:signin/screens/LoginScreen.dart';
//import 'RegistrationScreen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcomescreen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            ),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(height: 50),
            Center(
              child: Image.asset('images/sdc.jpg'),
            ),
            const SizedBox(height: 50),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
                fontFamily: 'Pacifico',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Link USS'),
                  TypewriterAnimatedText('Welcome there !!!'),
                ],
                repeatForever: true,
                onTap: null,
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 150.0,
              height: 50.0,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                     
                    ),
                  ),
                ),
                onPressed: () {
                  null;
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const RegistrationScreen(),
                  //   ),
                  // );
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
            ),
            SizedBox(
              width: 150.0,
              height: 50.0,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      
                    ),
                  ),
                ),
                onPressed: () {
                  null;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
