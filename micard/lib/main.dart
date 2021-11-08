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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/thanos.jpeg'),
              radius: 50.0,
            ),
            const Text(
              'Thanos',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'BadScript',
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Text(
              'Supervillain',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.tealAccent,
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(
                left: 30.0,
                right: 30.0,
                top: 10.0,
                bottom: 10.0,
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.local_phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    '+82 10 123 4567',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(
                left: 30.0,
                right: 30.0,
                top: 10.0,
                bottom: 10.0,
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.mail,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'thanos@avengers.villain',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
