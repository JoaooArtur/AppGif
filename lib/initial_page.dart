import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  String temaGif = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ClipRRect(
                child: Container(
                  child: Image.network('https://c.tenor.com/oogtfsQRHkgAAAAM/lost-john-travolta.gif'),
                ),
                borderRadius: BorderRadius.circular(150)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                  onChanged: (text) {
                    temaGif = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Digite um tema para pesquisar GIFs!',
                    hoverColor: Colors.black,
                    border: OutlineInputBorder(),
                  )),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent, width: 3), borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                    onPressed: () {
                      debugPrint(temaGif);
                    },
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(Icons.search),
                      Padding(padding: EdgeInsets.all(8), child: Text('Pesquisar', style: TextStyle(fontSize: 15)))
                    ])),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent, width: 3), borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(Icons.star),
                      Padding(padding: EdgeInsets.all(8), child: Text('Favoritos', style: TextStyle(fontSize: 15)))
                    ])),
              ),
            ]),
          ])),
    );
  }
}
