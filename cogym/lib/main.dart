import 'package:cogym/Views/LoginPage/loginPage.dart';
import 'package:cogym/Views/MainPage/mainPage.dart';
import 'package:cogym/Views/RegisterPage/registerPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      'registerPage':(context) => RegisterPage(),
      'loginPage': (context) => LoginPage(),
  },
    theme: ThemeData(
      scaffoldBackgroundColor: Color.fromRGBO(39, 39, 39, 50),

    ),home: LoginPage()));
}
