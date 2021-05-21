import 'package:cogym/Views/LoginPage/loginPage.dart';
import 'package:cogym/Views/MainPage/mainPage.dart';
import 'package:cogym/Views/StudentsScheduledPage/studentsScheduledPage.dart';
import 'package:cogym/Views/RegisteryPage/registeryPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Views/ChatPage/chatPage.dart';



void main() {
  runApp(MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('pt', 'BR')],
    debugShowCheckedModeBanner: false,
    routes: {
      'telaRegistrar':(context) => RegisteryPage(),
      'telaLogin': (context) => LoginPage(),
      'telaPrincipal': (context) => MainPage(),
      'telaConfigurações': (context) => StudentsScheduledPage(),
      'telaChat': (context) => ChatPage(),
  },
    theme: ThemeData(
      scaffoldBackgroundColor: Color.fromRGBO(39, 39, 39, 50),

    ),home: LoginPage()));
}
