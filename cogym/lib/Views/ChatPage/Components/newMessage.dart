import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  @override
  _NewMessageState createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  String enteredMessage = '';

  void sendMessage(){
    FocusScope.of(context).unfocus();
    Text(enteredMessage);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(labelText: "Enviar mensagem...", fillColor: Colors.white, filled: true),
              onChanged: (value) {
                setState(() {
                  enteredMessage = value;
                });
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.send, color: Colors.white),
            onPressed: enteredMessage.trim().isEmpty ? null : sendMessage,
          ),
        ],
      ),
    );
  }
}
