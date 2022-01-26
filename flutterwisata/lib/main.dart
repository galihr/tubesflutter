import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterwisata/login.dart';
import 'package:flutterwisata/wisata.dart';

import 'detail.dart';
import 'listdrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<ListWisata> listWisata;

  Future<ListWisata> getListWista() async {
    //fetch data from api

    var dio = Dio();
    Response response =
        await dio.get('https://dev.farizdotid.com/api/purwakarta/komunitas');
    print(response.data);
    if (response.statusCode == 200) {
      return ListWisata.fromJson(response.data);
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    listWisata = getListWista();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: NavDrawer(),
        
      appBar: AppBar(
        title: Text("Halaman Wisata"),
      ),
      body: FutureBuilder<ListWisata>(
          future: listWisata,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  itemCount: snapshot.data.komunitas.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        onTap: () => {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailScreen(komunitas: snapshot.data.komunitas[index])))
                        },
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              '${snapshot.data.komunitas[index].logoUrl}'),
                        ),
                        title: Text("${snapshot.data.komunitas[index].nama}"),
                        subtitle:
                            Text("${snapshot.data.komunitas[index].kategori}"),
                      ),
                    );
                  });
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
