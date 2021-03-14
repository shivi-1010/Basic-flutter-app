import 'package:crm/Signup.dart';
import 'package:crm/login.dart';
import 'package:flutter/material.dart';
import 'package:crm/home.dart';
void main() => runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) => Login(),
      '/home': (context) => Home(),
      '/signup': (context) => Signup(),
    },
));




