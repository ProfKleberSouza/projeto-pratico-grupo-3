import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
StyleSnackBar(String answer, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(width: 2.0, color: Colors.black),
            borderRadius: BorderRadius.circular(20)
        ),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 80),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(answer,
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 1000,
      behavior: SnackBarBehavior.floating));
}