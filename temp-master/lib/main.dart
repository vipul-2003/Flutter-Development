import 'package:flutter/material.dart';
import 'package:sdc/screens/WelcomeScreen.dart';
import 'package:sdc/screens/LoginScreen.dart';
import 'package:sdc/screens/RegistrationScreen.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
      },
    );
  }
}
