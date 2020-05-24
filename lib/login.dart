import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back.png'), fit: BoxFit.cover),
            color: Colors.red,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                    ),
                    Flexible(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Enter your email',
                          icon: Icon(Icons.person, color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                    ),
                    Flexible(
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: Colors.white),
                          icon: Icon(Icons.lock, color: Colors.white),
                          suffixIcon:
                              Icon(Icons.visibility, color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: screenSize.width,
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.right,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Container(
                  width: screenSize.width * 0.5,
                  height: screenSize.width * 0.14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        color: Color(0xFF5DCCC2),
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        )),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Don\'t have an account? ',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    Text('Sign up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ],
          )),
    ));
  }
}
