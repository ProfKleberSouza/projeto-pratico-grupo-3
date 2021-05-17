import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      //Theme para conseguir colo o background da cor correta
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(39, 39, 39, 1),
      ),
      child: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              // Expande essa parte do código até o fim da página
              child: ListView(
                padding: EdgeInsets.only(top: 50, left: 0, right: 0, bottom: 0),
                children: <Widget>[
                  Container(
                      child: Column(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'telaPrincipal');
                            },
                            child: ListTile(
                              leading: Image.asset(
                                  'images/menuSandwich/baseline_event_available_white_24dp.png'),
                              title: Text("ACADEMIAS",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Bebas Neue',
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Colors.white),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'telaConfigurações');
                            },
                            child: ListTile(
                              leading: Image.asset(
                                  'images/menuSandwich/baseline_settings_white_24dp.png'),
                              title: Text("CONFIGURAÇÕES",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Bebas Neue',
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Colors.white),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'telaChat');
                            },
                            child: ListTile(
                              leading: Image.asset(
                                  'images/menuSandwich/baseline_chat_white_24dp.png'),
                              title: Text("CHAT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Bebas Neue',
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Colors.white),
                    ],
                  )),
                ],
              ),
            ),
          Divider(color: Colors.white),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'telaLogin');
                },
                child: ListTile(
                  contentPadding:
                      EdgeInsets.only(top: 0, left: 10, right: 0, bottom: 15),
                  leading: Image.asset(
                      'images/menuSandwich/baseline_power_settings_new_white_24dp.png'),
                  title: Text("DESCONECTAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Bebas Neue',
                          fontSize: 25,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
