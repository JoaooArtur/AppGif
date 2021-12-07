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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.network(widget.gifs[0] + '.gif'),
      ),
    );
  }
}
