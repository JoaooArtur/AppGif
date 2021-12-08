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
      appBar: AppBar(
        title: Text("Gifs"),
        centerTitle: true,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        controller: _controller,
        child: Scrollbar(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2.0,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(16.0),
                ),
                child: new InkWell(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new ClipRRect(
                        child: Image.network(widget.gifs[index]),
                        borderRadius: BorderRadius.only(
                          topLeft: new Radius.circular(16.0),
                          topRight: new Radius.circular(16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: widget.gifs.length,
          ),
        ),
      ),
    );
  }
}
