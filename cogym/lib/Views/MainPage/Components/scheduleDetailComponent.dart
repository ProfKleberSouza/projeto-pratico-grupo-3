import 'package:cogym/Models/PeopleByScheduleModel.dart';
import 'package:cogym/Utils/dateUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleDetailComponent extends StatelessWidget {
  final int hour;
  final DateTime dateTime;

  ScheduleDetailComponent({this.hour, this.dateTime});

  @override
  Widget build(BuildContext context) {
    // List<Map<String,dynamic>> listPeopleByScheduleConst = json.decode(peopleByScheduleConst);
    PeopleBySchedule peopleBySchedule = new PeopleBySchedule(this.hour, 10, 30);
    return AlertDialog(
      contentPadding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
      content: SingleChildScrollView(
        child: Container(
          height: 440,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 40,
                    ),
                    onPressed: () => Navigator.pop(context, false),
                  ),
                ],
              ),
              Text('${peopleBySchedule.hour}' + "H",
                  style: TextStyle(
                      color: Color.fromRGBO(39, 39, 39, 50),
                      fontFamily: 'Bebas Neue',
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
              Text(dateFormat(dateTime).toUpperCase(),
                  style: TextStyle(
                      color: Color.fromRGBO(39, 39, 39, 50),
                      fontFamily: 'Bebas Neue',
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
              Divider(color: Colors.black),
              Text(
                  '${peopleBySchedule.peopleScheduled} ' +
                      "PESSOAS NESSE HORÁRIO",
                  style: TextStyle(
                      color: Color.fromRGBO(39, 39, 39, 50),
                      fontFamily: 'Bebas Neue',
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
              Divider(color: Colors.black,),
              Text(
                  '${peopleBySchedule.maxPeople - peopleBySchedule.peopleScheduled} ' +
                      "VAGAS DISPONÍVEIS",
                  style: TextStyle(
                      color: Color.fromRGBO(39, 39, 39, 50),
                      fontFamily: 'Bebas Neue',
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 10),
              TextButton(
                  onPressed: ()  {
                    Navigator.popAndPushNamed(context, 'telaDetalhesHorario');
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    color: Colors.yellow,
                    child: Center(
                      child: Text("VER DETALHES", style: TextStyle(color: Colors.black)),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
