import 'package:flutter/material.dart';
class CardComponent extends StatefulWidget {
  int hour;
  DateTime dateTime;
  TextEditingController controller;
  CardComponent({this.dateTime,this.hour});
  @override
  _CardComponentState createState() => _CardComponentState();
}

class _CardComponentState extends State<CardComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Card tapped.');
              },
              child: SizedBox(
                width:  MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.05,
                child: Text('A card that can be tapped'),
              ),
            ),
          ),
        ]
    );
  }
}