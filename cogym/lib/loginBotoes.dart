import 'package:flutter/material.dart';
import './registerPage.dart';

class LoginBotoes extends StatefulWidget {
  @override
  _LoginBotoesState createState() => _LoginBotoesState();
}

class _LoginBotoesState extends State<LoginBotoes> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'telaRegistrar');
            },
            child: new Text(
              "Esqueci minha senha",
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Bebas Neue', fontSize: 15),
            ),
          ),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.amberAccent),
            foregroundColor: MaterialStateProperty.all<Color>(
                Color.fromRGBO(39, 39, 39, 50)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Text(
              'Entrar',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Bebas Neue',
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          onPressed: () {
            // LÓGICA LOGIN
          },
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RegisterPage()));
        },
        child: new Text(
          "Cadastrar",
          style: TextStyle(
              color: Colors.white, fontFamily: 'Bebas Neue', fontSize: 20),
        ),
      ),
    ]);
  }
}
