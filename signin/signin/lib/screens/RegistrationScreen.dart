import 'package:flutter/material.dart';

class MainProfilePage extends StatefulWidget {
  const MainProfilePage({Key? key}) : super(key: key);

  @override
  State<MainProfilePage> createState() => _MainProfilePageState();
}

class _MainProfilePageState extends State<MainProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children :[
          Image.asset('images/sdc.jpg'),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Welcome on main page of profile section'
          ),
          
        ],
      ),
    );
  }
}
