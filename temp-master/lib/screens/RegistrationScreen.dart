import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sdc/screens/WelcomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: must_be_immutable
class RegistrationScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _secureText = true;
  bool showSpinner = false;
  late String email;
  late String password;
  late String name;
  final _auth = FirebaseAuth.instance;

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
                  color: Colors.deepOrange,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Registration'),
                    TypewriterAnimatedText('Registration'),
                    TypewriterAnimatedText('Registration'),
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
                decoration: const InputDecoration(
                  labelText: 'Email ID',
                  hintText: 'Email ID',
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
                  child: const Text('Register'),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        // side: BorderSide(color: Colors.red)))),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    setState(() {
                      showSpinner = false;
                    });

                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);

                      if (newUser != null) {
                        Navigator.pushNamed(context, WelcomeScreen.id);
                      }
                    } catch (e) {
                      print('Error in Sign in process');
                    }
                    print(email);
                    print(password);

                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    // ignore: avoid_print
                    print('submit');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
