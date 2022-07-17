import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final bool _secureText = true;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Image.asset('images/ggsipu.jpg'),
          Expanded(
            flex: 3,
            child: Container(
                height: 150.00,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Sign Up'),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      // onChanged: (value) {
                      //   email = value;
                      // },
                      textAlign: TextAlign.center,
                      decoration:  InputDecoration(
                        labelText: 'Email ID',
                        hintText: 'Enter Your Email ID',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        filled: true,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      // onChanged: (value) {
                      //   email = value;
                      // },
                      textAlign: TextAlign.center,
                      decoration:  InputDecoration(
                        labelText: 'Email ID',
                        hintText: 'Enter Your Email ID',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        filled: true,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      // onChanged: (value) {
                      //   email = value;
                      // },
                      textAlign: TextAlign.center,
                      decoration:  InputDecoration(
                        labelText: 'Email ID',
                        hintText: 'Enter Your Email ID',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        filled: true,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    
                  ],
                )),
          ),

          Expanded(
            child: Container(
              height: 20.00,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
