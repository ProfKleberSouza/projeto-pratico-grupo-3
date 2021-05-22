import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginForm extends StatefulWidget {
    @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String _email, _password;
  final auth = FirebaseAuth.instance;
  bool _focus = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FocusScope(
          child:
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
              child: Focus(
                onFocusChange: (focus)  {
                  setState(() { _focus = focus; });
                },
                child:TextFormField(
                  controller: this.emailController,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical:15, horizontal: 16),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Bebas Neue',
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow( // bottomLeft
                            offset: Offset(-1.5, -1.5),
                            color: Colors.white
                        ),
                        Shadow( // bottomRight
                            offset: Offset(1.5, -1.5),
                            color: Colors.white
                        ),
                        Shadow( // topRight
                            offset: Offset(1.5, 1.5),
                            color: Colors.white
                        ),
                        Shadow( // topLeft
                            offset: Offset(-1.5, 1.5),
                            color: Colors.white
                        ),
                      ]
                    ),
                    errorStyle: TextStyle(
                      color: Theme.of(context).errorColor,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFFFCF8EF),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _email = value.trim();
                    });
                  },
                )
          ),
            ),
        ),
        FocusScope(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
            child: Focus(
                onFocusChange: (focus)  {
                  setState(() { _focus = focus; });
                },
                child:TextFormField(
                  controller: passwordController,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  obscureText: true,
                  decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical:15, horizontal: 16),
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Bebas Neue',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow( // bottomLeft
                          offset: Offset(-1.5, -1.5),
                          color: Colors.white
                        ),
                        Shadow( // bottomRight
                            offset: Offset(1.5, -1.5),
                            color: Colors.white
                        ),
                        Shadow( // topRight
                            offset: Offset(1.5, 1.5),
                            color: Colors.white
                        ),
                        Shadow( // topLeft
                            offset: Offset(-1.5, 1.5),
                            color: Colors.white
                        ),
                      ]
                    ),
                    errorStyle: TextStyle(
                      color: Theme.of(context).errorColor,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFFFCF8EF),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _password = value.trim();
                    });
                  },
                )
            ),
          ),
        ),
      ],
    );
  }
}