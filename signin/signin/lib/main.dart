import 'package:flutter/material.dart';
import 'screens/WelcomeScreen.dart';
//import 'screens/LoginScreen.dart';
//import 'screens/RegistrationScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
       // LoginScreen.id: (context) => const LoginScreen(),
       // RegistrationScreen.id: (context) => const RegistrationScreen(),
      },
    );
  }
}
