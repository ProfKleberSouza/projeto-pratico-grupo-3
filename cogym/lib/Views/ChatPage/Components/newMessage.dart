import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  Function(String mensagem) aoEnviar;

  NewMessage(this.aoEnviar);

  @override
  _NewMessageState createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(labelText: "Enviar mensagem...", fillColor: Colors.white, filled: true),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.white),
            onPressed: () => widget.aoEnviar(controller.text),
          ),
        ],
      ),
    );
  }
}
