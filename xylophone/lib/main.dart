import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: XylophoneKeys(),
        ),
      ),
    );
  }
}

class XylophoneKeys extends StatelessWidget {
  const XylophoneKeys({Key? key}) : super(key: key);

  Widget _buildKey(Color color) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {},
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildKey(Colors.red),
        _buildKey(Colors.orange),
        _buildKey(Colors.yellow),
        _buildKey(Colors.green),
        _buildKey(Colors.lightBlueAccent),
        _buildKey(Colors.blue),
        _buildKey(Colors.purple),
      ],
    );
  }
}
