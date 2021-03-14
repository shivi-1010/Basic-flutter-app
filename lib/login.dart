import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(width: MediaQuery.of(context).size.width / 2, height: MediaQuery.of(context).size.height / 2.05, color: Colors.blueAccent),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(width: MediaQuery.of(context).size.width / 2, height: MediaQuery.of(context).size.height / 2.05, color: Colors.blueAccent),
                      ],
                    ),
                  ],),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 4,
                left: MediaQuery.of(context).size.width / 10,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 2.2,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Text('Login', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold))
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          width: MediaQuery.of(context).size.width / 1.75,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Enter Username',
                                hintStyle: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20
                                ),
                                fillColor: Colors.blue,
                                prefixIcon: new Icon(Icons.supervised_user_circle),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          width: MediaQuery.of(context).size.width / 1.75,
                          child: TextFormField(
                            obscureText: true,
                            validator: (val) => val.length < 6 ? 'sdkfjskdlfj' : null,
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(
                                color: Colors.blue,
                                fontSize: 20
                              ),
                              fillColor: Colors.blue,
                              prefixIcon: new Icon(Icons.security),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: FlatButton(
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: Text('Login'),
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text('New user Register', style: TextStyle(
                            fontSize: 11
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]
          )
      ),
      backgroundColor: Colors.lightBlue,
    );
  }
}
