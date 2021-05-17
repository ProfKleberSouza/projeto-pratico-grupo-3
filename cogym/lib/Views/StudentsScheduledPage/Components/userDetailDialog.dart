import 'package:flutter/material.dart';

class UserDetailDialog extends StatelessWidget {
  final String nome;
  final String cpf;
  final String email;
  final int matricula;
  final String unidade;

  const UserDetailDialog({Key key, this.nome, this.cpf, this.email, this.matricula, this.unidade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
      content: SingleChildScrollView(
        child: Container(
          height: 440,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 40,
                    ),
                    onPressed: () => Navigator.pop(context, false),
                  ),
                ],
              ),
              Text('${nome}', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('CPF: ${cpf}', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('EMAIL: ${email}', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('MATRICULA: ${matricula}', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('UNIDADE: ${unidade}', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
