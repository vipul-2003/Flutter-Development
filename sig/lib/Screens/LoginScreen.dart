import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool _secureText = true;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment :Alignment.center ,
                height: 150.00,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 221, 238, 250),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  
                  children: [
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                     TextFormField(
                      // onChanged: (value) {
                      //   email = value;
                      // },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: 'E-mail Address',
                        hintText: 'Enter Your Email ID',
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),

                        filled: true,
                      ),

                      keyboardType: TextInputType.emailAddress,
                      
                    ),

                    const SizedBox(
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
                        border:  OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                          
                        suffixIcon: IconButton(
                          icon: Icon(_secureText
                              ? Icons.remove_red_eye
                              : Icons.security),
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
                      height: 30.0,
                    ),
                    TextField(
                      // onChanged: (value) {
                      //   email = value;
                      // },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        hintText: 'Qwerty@1234',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                        suffixIcon: IconButton(
                          icon: Icon(_secureText
                              ? Icons.remove_red_eye
                              : Icons.security),
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
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 20.00,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
