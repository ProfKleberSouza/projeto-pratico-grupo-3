import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState  extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         Text("data", style: TextStyle(color: Colors.white, fontSize: 30),)
       ]
     )
   );
  }
}
