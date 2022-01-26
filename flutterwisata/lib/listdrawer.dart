import 'package:flutter/material.dart';
import 'package:flutterwisata/login.dart';
import 'package:flutterwisata/main.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Daftar Menu',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.lightBlue,
               /* image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('assets/images/tealogo.png')
              ),*/
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Beranda'),
            onTap: () => {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return HomePage();
            }))},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Log out"),
            onTap: () => {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return LoginPage();
            }))},
          ),
        ],
      ),
    );
  }
}
