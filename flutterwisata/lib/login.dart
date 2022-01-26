import 'package:flutter/material.dart';
import 'package:flutterwisata/main.dart';

import 'listdrawer.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF42A5F5),
        drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF42A5F5),
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 30),
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  child: Image.asset('assets/images/halo.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    labelText: 'Email',
                    hintText: 'Masukan email valid. contoh:abc@gmail.com'),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    labelText: 'Kata Sandi',
                    //labelStyle: TextStyle(color: Colors.orange),
                    hintText: 'Masukkan kata sandi'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      onPrimary: Colors.white,
                      textStyle: TextStyle(fontSize: 25)),
                  onPressed: () {
                    // VALIDATOR NANTI BIKIN DISINI
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 15),
              child: TextButton(
                child: Text(
                  'Lupa Password',
                ),
                style: TextButton.styleFrom(
                  primary: Colors.orange,
                  textStyle: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 150),
              child: TextButton(
                child: Text(
                  'Belum punya akun? Buat sekarang',
                ),
                style: TextButton.styleFrom(
                  primary: Colors.orange,
                  textStyle: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}