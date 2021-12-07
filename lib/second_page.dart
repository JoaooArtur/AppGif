import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final List<String> gifs;

  SecondPage(this.gifs);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  ScrollController _controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Image.network(widget.gifs[0], width: 300, height: 400, fit: BoxFit.contain),
        ));
  }
}
