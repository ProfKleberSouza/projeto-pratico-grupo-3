import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class AlertDialogComponentPrint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
      content: SingleChildScrollView(
        child: Container(
          height: 200,
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
              Text("Deseja Salvar os Dados?"),
              TextButton(
                  onPressed: () async {
                    /*final Email email = Email(
                      body: 'Email body',
                      subject: 'Email subject',
                      recipients: ['caujansen@gmail.com'],
                      cc: ['caujansen@example.com'],
                      bcc: ['bcc@example.com'],
                      attachmentPaths: ['/path/to/attachment.zip'],
                      isHTML: false,
                    );
                    await FlutterEmailSender.send(email);*/
                    Toast.show("Enviamos os dados para o seu email", context, duration: Toast.LENGTH_LONG, gravity:  Toast.BOTTOM);
                    Navigator.pop(context, false);
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    color: Colors.yellow,
                    child: Center(
                      child: Text("CONFIRMAR", style: TextStyle(color: Colors.black)),
                    ),
                  )),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
