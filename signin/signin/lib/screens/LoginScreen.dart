import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  bool _secureText = true;
  late String email;
  late String password;
  //final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/sdc.jpg',
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 20.0,
              ),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Login '),
                    TypewriterAnimatedText('Login'),
                    TypewriterAnimatedText('Login'),
                  ],
                  repeatForever: true,
                  onTap: null,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                onChanged: (value) {
                  email = value;
                },
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
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
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _secureText ? Icons.remove_red_eye : Icons.security),
                    onPressed: () {
                      setState(() {
                        _secureText = !_secureText;
                      });
                    },
                  ),
                ),
                obscureText: _secureText,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: 150.0,
                height: 50.0,
                child: ElevatedButton(
                  child: const Text('Login '),
                  onPressed: () async {
                    showSpinner = true;
//                     try {
//                       final newUser =
//                           await _auth.createUserWithEmailAndPassword(
//                               email: email, password: password);

//                       if (newUser != null) {
//                         Navigator.pushNamed(context, WelcomeScreen.id);
//                       }
// setState(() {
//                         showSpinner = false;
//                       });
                      
//                     } catch (e) {
//                       print('Error in Sign in process');
//                     }
                    print(email);
                    print(password);

                  //   final newUser = await _auth.createUserWithEmailAndPassword(
                  //       email: email, password: password);
                  // },
                  // style: ButtonStyle(
                  //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //     RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(18.0),
                  //     ),
                  },
  
                ),
                   )
                
              
            ],
          ),
        ),
      ),
    );
  }
}
