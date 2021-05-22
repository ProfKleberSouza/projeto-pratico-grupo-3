import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/formLogin.dart';
import 'components/loginButtons.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                Image.asset('images/whiteLogo.png'),
                LoginForm(),
                LoginButtons(

                ),
              ]
          ),
        ),
      );
  }
}