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
      body: SafeArea(
        child: Column(
          children: [
            // Image.asset('images/ggsipu.jpg',
            // height : 200 ,
            // width : 200,
            // ),
            Expanded(
              flex: 3,
              child: Container(
                  height: 150.00,
                  
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 221, 238, 250),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: const [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        // onChanged: (value) {
                        //   email = value;
                        // },
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          labelText: 'E-mail address',
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
                        decoration: InputDecoration(
                          labelText: 'Create Password',
                          hintText: 'Enter your password',
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
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
