
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Components/cardComponent.dart';
import 'Components/selectGymLabel.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState  extends State<MainPage> {
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
         title: Text(""),//Image(),
         leading: Icon(Icons.menu),
         backgroundColor: Color(0xffFFDD00),

     ),
     body: Column(
       children: [

         Padding(
           padding: const EdgeInsets.fromLTRB(35, 20, 30, 0),
           child: Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [Text("ACADEMIA",style: TextStyle(
                 color: Colors.white,
                 fontFamily: 'Bebas Neue',
                 fontSize: 25,
                 fontWeight: FontWeight.w500))]
            )
           ),
         ),
         Center(
           child: SelectGymLabel(
             labelTextGym: "SELECIONE A UNIDADE",
           )
         ),
         Center(
             child: CardRenderHourBased()
         )
       ]
     )
   );
  }
   CardRenderHourBased() {
    var now = DateTime.now().hour;
    var twoHoursAfter = 2;

    if(now <= 4) { //Before 6h morning
      for(int hourToPutInCard = 6; hourToPutInCard <= 23; hourToPutInCard++ ){
        // CardComponent(hour: hourToPutInCard, dateTime: new DateFormat("MMMMd","pt_BR").format(new DateTime.now()));
         column:CardComponent(hour: hourToPutInCard, dateTime: new DateTime.now());
      }
    }
    else if(now >= 22){// After 22h
      DateTime nextDay = new DateTime.now();
      // String nextDay = (new DateTime.now().day + 1).toString();
      // String month = (new DateTime.now().month).toString();
      // DateTime dateInformation = new DateFormat("MMMMd","pt_BR").parse(month + nextDay);
      // DateTime dateInformation = nextDay.add(const Duration(days: 1));

      for(int hourToPutInCard = 6; hourToPutInCard <= 23; hourToPutInCard++) {
        // CardComponent(hour: hourToPutInCard, dateTime: new DateFormat("MMMMd","pt_BR").format(new DateTime.now()));
        builder: CardComponent(hour: hourToPutInCard, dateTime: nextDay.add(const Duration(days: 1)));
      }
    }
    else {
      int hourToPutInCard = now + twoHoursAfter; //Only appear cards two hours after the current hour
      // ignore: unnecessary_statements
      for (hourToPutInCard; hourToPutInCard <= 23; hourToPutInCard++) { //During the day
        // CardComponent(hour: hourToPutInCard, dateTime: new DateFormat("MMMMd","pt_BR").format(new DateTime.now()));
        builder: CardComponent(hour: hourToPutInCard, dateTime: new DateTime.now());
      }
    }
  }
}
