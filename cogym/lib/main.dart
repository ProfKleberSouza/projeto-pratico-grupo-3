import 'package:cogym/Views/LoginPage/loginPage.dart';
import 'package:cogym/Views/MainPage/mainPage.dart';
import 'package:cogym/Views/StudentsScheduledPage/studentsScheduledPage.dart';
import 'package:cogym/Views/RegisteryPage/registeryPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Views/ChatPage/chatPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('pt', 'BR')],
      debugShowCheckedModeBanner: false,
      routes: {
        'telaRegistrar': (context) => RegisteryPage(),
        'telaLogin': (context) => LoginPage(),
        'telaPrincipal': (context) => MainPage(),
        'telaConfigurações': (context) => StudentsScheduledPage(),
        'telaChat': (context) => ChatPage(),
        'telaDetalhesHorario': (context) => StudentsScheduledPage(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(39, 39, 39, 50),
      ),
      home: FutureBuilder(
          future: _fbApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('You have an error! ${snapshot.error.toString()}');
              return Text('Something went wrong');
            } else if (snapshot.hasData) {
              return LoginPage();
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
