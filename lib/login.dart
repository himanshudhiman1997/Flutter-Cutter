import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the app!!!'),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Login',
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20),
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(hintText: 'Enter your email'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20),
              ),
              Flexible(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Enter your password'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                color: Colors.black,
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      )),
    );
  }
}
