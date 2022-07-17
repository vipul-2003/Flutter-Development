import 'package:flutter/material.dart';
import 'Screens/loginScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,

      home : loginScreen(),
      //initialRoute: WelcomeScreen.id,
      // routes: {
      //  LoginScreen.id: (context) => const LoginScreen(),
      //  RegistrationScreen.id: (context) => const RegistrationScreen(),
      // },
    );
  }
}
