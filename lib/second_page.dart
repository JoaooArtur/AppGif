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
      body: SingleChildScrollView(
        controller: _controller,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Image.network(widget.gifs[index]);
            },
            itemCount: widget.gifs.length,
          ),
        ),
      ),
    );
  }
}
