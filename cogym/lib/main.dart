import 'package:cogym/formLogin.dart';
import 'package:cogym/registerPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './formLogin.dart';
import './loginBotoes.dart';
import './registerPage.dart';

void main() {
  runApp(cogymLogin());
}

class cogymLogin extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/registerPage': (context) => RegisterPage(),
        },
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(39, 39, 39, 50),
          primaryColor: Colors.amberAccent,
          fontFamily: "Bebas Neue",
        ),
        home: Scaffold(
          body: Column(
            children: [
              Image.asset('images/whiteLogo.png'),
              FormLogin(
                labelTextUsuario: 'Usuário',
                labelTextSenha: 'Senha',
                controller: _controller,
                errorTextUsuario: 'Usuário inválido',
                errorTextSenha: 'Senha inválida',
              ),
              LoginBotoes(),
              /*RegisterPage(
                labelTextUnidade: 'Unidade',
                labelTextEndereco: 'Endereço',
                controller: _controller,
                errorTextUnidade: 'Unidade inválida',
                errorTextEndereco: 'Endereço inválido',
              ),*/
            ],
          ),
        ));
  }
}
