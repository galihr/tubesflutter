import 'package:flutter/material.dart';
import 'package:flutterwisata/main.dart';
import 'package:flutterwisata/wisata.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key, this.komunitas}) : super(key: key);
  final Komunitas komunitas;

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF42A5F5),
          title: Text(komunitas.nama),
           leading: new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            )
        ),
        body: Container(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                komunitas.deskripsi.toString(),
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15),
            ),
          ]),
        ),
      ),
    );
}
}