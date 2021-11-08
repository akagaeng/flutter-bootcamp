import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiCard',
      home: MiCard(),
    );
  }
}

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('images/thanos.jpeg'),
              radius: 50.0,
            ),
            Text(
              'Thanoss',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'BadScript',
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'Supervillain',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Montserrat',
              ),
            ),
            Divider(color: Colors.white,),
            // line
            // phone number
            // email
          ],
        ),
      ),
    );
  }
}
