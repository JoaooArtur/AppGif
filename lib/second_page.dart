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
        child: Scrollbar(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: 400,
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                widget.gifs[index],
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                  Icon(Icons.delete),
                                  Padding(padding: EdgeInsets.all(8), child: Text('Desfavoritar', style: TextStyle(fontSize: 15)))
                                ])),
                          ],
                        ))),
              );
            },
            itemCount: widget.gifs.length,
          ),
        ),
      ),
    );
  }
}
