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
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('images/thanos.jpeg'),
              radius: 50.0,
            ),
            Text(
              'Thanos',
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
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.tealAccent,
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
              child: ListTile(
                leading: Icon(
                  Icons.local_phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+82 10 123 4567',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: Text(
                  'thanos@avengers.villain',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
