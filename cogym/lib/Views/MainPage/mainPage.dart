import 'package:cogym/Views/Commons/appBarComponent.dart';
import 'package:cogym/Views/Commons/sideBarComponent.dart';
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
        drawer: SideBarComponent(),
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

  // ignore: non_constant_identifier_names
  List<Widget> CardRenderHourBased() {
    var localTime = DateTime.now();
    var now = localTime.hour;
    var twoHoursAfter = 2;

    if (now <= 4) {
      //Before 6h morning
      for (int hourToPutInCard = 6; hourToPutInCard <= 23; hourToPutInCard++) {
        this.children.add(
            CardComponent(hour: hourToPutInCard, dateTime: localTime));
      }
    } else if (now >= 22) {
      // After 22h
      DateTime nextDay = localTime;
      for (int hourToPutInCard = 6; hourToPutInCard <= 23; hourToPutInCard++) {
        this.children.add(CardComponent(
            hour: hourToPutInCard,
            dateTime: nextDay.add(const Duration(days: 1))));
      }
    } else {
      int hourToPutInCard = now +
          twoHoursAfter; //Only appear cards two hours after the current hour
      // ignore: unnecessary_statements
      for (hourToPutInCard; hourToPutInCard <= 23; hourToPutInCard++) {
        //During the day
        this.children.add(
            CardComponent(hour: hourToPutInCard, dateTime: localTime));
      }
    }
    return <Widget>[Expanded(flex: 0, child: Column(children: this.children))];
  }
}
