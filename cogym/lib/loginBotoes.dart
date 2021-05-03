import 'package:flutter/material.dart';
import './telaRegistrar.dart';

class LoginBotoes extends StatefulWidget{

  @override
  _LoginBotoesState createState() => _LoginBotoesState();
}

class _LoginBotoesState extends State<LoginBotoes>{
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'telaRegistrar');
          },
          child: new Text(
            "Esqueci minha senha",
            style: TextStyle(
              color: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Text('Entrar'),
            onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> telaRegistrar())
            );
            },
          ),
      ]
    );
  }
}