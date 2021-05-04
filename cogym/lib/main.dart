import 'package:cogym/formLogin.dart';
import 'package:cogym/telaRegistrar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './formLogin.dart';
import './loginBotoes.dart';

void main() {
  runApp(cogymLogin());
}

class cogymLogin extends StatelessWidget {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'telaRegistrar':
          (context) => telaRegistrar(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(39, 39, 39, 50),

      ),
      home: Scaffold(
        body: Column(
            children: [
              Image.asset('images/whiteLogo.png'),
              FormLogin(
                labelTextUsuario: 'Usuário',
                labelTextSenha: 'Senha',
                controller: _controller,
                errorTextUsuario: 'Usuário inválida',
                errorTextSenha: 'Senha inválida',
              ),
              LoginBotoes(),
            ]
        ),
      ),
    );
  }
}