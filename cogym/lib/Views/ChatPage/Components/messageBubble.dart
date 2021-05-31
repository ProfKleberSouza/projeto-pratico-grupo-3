import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;

  MessageBubble(this.message);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          width: 250,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 8,
          ),
          child: Text(message),
        ),
      ],
    );
  }
}
