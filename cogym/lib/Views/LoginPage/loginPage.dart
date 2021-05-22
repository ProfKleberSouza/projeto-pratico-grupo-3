import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/formLogin.dart';
import 'components/loginButtons.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                Image.asset('images/whiteLogo.png'),
                LoginForm(_setEmail,_setPassword),
                LoginButtons(_email, _password),
              ]
          ),
        ),
      );
  }
  _setEmail(email) {
    setState(() {
      this._email = email;
    });
  }
  _setPassword(password) {
    setState(() {
      this._password = password;
    });
  }
}