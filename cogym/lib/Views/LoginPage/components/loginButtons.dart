import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginButtons extends StatelessWidget {
  final String _email;
  final String _password;

  LoginButtons(this._email, this._password);

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
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
              auth.signInWithEmailAndPassword(
                  email: this._email, password: this._password).then((_) {
                Navigator.popAndPushNamed(context, 'telaPrincipal');
              }).catchError((error) {
                var errorCode = error.code;
                if (errorCode == 'wrong-password') {
                  _styleSnackBar("Email ou senha incorretos", context);
                } else {
                  _styleSnackBar("Insira um email e senha válidos", context);
                }
              });

              // Navigator.pushNamed(context, "telaPrincipal")
            }),
      ),
      GestureDetector(
        onTap: () {
          // TODO: implementar a tela de registrar e utilizar esse comando para criar um novo usuário no firebase
          /*A tela registrar vai utilizar esse comando para cadastrar um novo usuário
          auth.createUserWithEmailAndPassword(email: widget._email, password: widget._password)
          */
          Navigator.pushNamed(context, 'telaRegistrar');
        },
        child: new Text(
          "Cadastrar",
          style: TextStyle(
              color: Colors.white, fontFamily: 'Bebas Neue', fontSize: 20),
        ),
      ),
    ]);
  }
  _styleSnackBar(String answer, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Container(
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(width: 2.0, color: Colors.black),
              borderRadius: BorderRadius.circular(20)
          ),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 80),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Insira um email e senha válidos',
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 1000,
        behavior: SnackBarBehavior.floating));
  }

}




