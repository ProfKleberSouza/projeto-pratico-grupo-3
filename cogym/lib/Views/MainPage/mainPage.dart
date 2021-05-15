import 'package:cogym/Views/Commons/appBarComponent.dart';
import 'package:flutter/material.dart';
import 'Components/cardComponent.dart';
import 'Components/selectGymLabel.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final children = <Widget>[];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarComponent(),
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(39, 39, 39, 1),
          ),
          child: Drawer(
              child: ListView(
            padding: EdgeInsets.only(top: 50, left: 0, right: 0, bottom: 0),
            children: <Widget>[
              Container(
                  child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                        'images/menuSandwich/baseline_event_available_white_24dp.png'),
                    title: Text("ACADEMIAS",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Bebas Neue',
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'images/menuSandwich/baseline_settings_white_24dp.png'),
                    title: Text("CONFIGURAÇÕES",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Bebas Neue',
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'images/menuSandwich/baseline_chat_white_24dp.png'),
                    title: Text("CHAT",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Bebas Neue',
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                  Align(
                    child: ListTile(
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
              )),
            ],
          )),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 20, 30, 0),
              child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    Text("ACADEMIA",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Bebas Neue',
                            fontSize: 25,
                            fontWeight: FontWeight.w500))
                  ])),
            ),
            Center(
                child: SelectGymLabel(
              labelTextGym: "SELECIONE A UNIDADE",
            )),
            Center(child: Column(children: CardRenderHourBased()))
          ]),
        ));
  }

  List<Widget> CardRenderHourBased() {
    var now = DateTime.now().hour;
    // var now = 16;
    var twoHoursAfter = 2;

    if (now <= 4) {
      //Before 6h morning
      for (int hourToPutInCard = 6; hourToPutInCard <= 23; hourToPutInCard++) {
        this.children.add(
            CardComponent(hour: hourToPutInCard, dateTime: new DateTime.now()));
      }
    } else if (now >= 22) {
      // After 22h
      DateTime nextDay = new DateTime.now();
      for (int hourToPutInCard = 6; hourToPutInCard <= 23; hourToPutInCard++) {
        this.children.add(CardComponent(
            hour: hourToPutInCard,
            dateTime: nextDay.add(const Duration(days: 1))));
      }
    } else {
      int hourToPutInCard = now +
          twoHoursAfter; //Only appear cards two hours after the current hour
      for (hourToPutInCard; hourToPutInCard <= 23; hourToPutInCard++) {
        //During the day
        this.children.add(
            CardComponent(hour: hourToPutInCard, dateTime: new DateTime.now()));
      }
    }
    return <Widget>[Expanded(flex: 0, child: Column(children: this.children))];
  }
}
