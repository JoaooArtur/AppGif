import 'package:flutter/material.dart';

import 'api/giphy.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String temaGif = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SizedBox(
        child: Text("Teste"),
      ),
    );
  }
}
