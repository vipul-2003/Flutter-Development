import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
         // Image.asset('images/ggsipu.jpg'),
         Expanded(
          child:Container(
            decoration:  BoxDecoration(
              color: Colors.blue[100],
              borderRadius : BorderRadius.only
            ),
          ) ,),

        ],
      ),);
    
  }
}
