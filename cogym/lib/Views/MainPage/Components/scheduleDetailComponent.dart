import 'package:cogym/Models/peopleByScheduleModel.dart';
import 'package:cogym/Utils/dateUtils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleDetailComponent extends StatelessWidget {
  final int hour;
  final DateTime dateTime;
  final PeopleBySchedule peopleBySchedule;

  ScheduleDetailComponent({this.hour, this.dateTime, this.peopleBySchedule});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
      contentPadding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
      content: SingleChildScrollView(
        child: Container(
          height: 400,
          child: Column(
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
                      fontSize: 50,
                      fontWeight: FontWeight.w500)),
              Text(dateFormat(dateTime).toUpperCase(),
                  style: TextStyle(
                      color: Color.fromRGBO(39, 39, 39, 50),
                      fontFamily: 'Bebas Neue',
                      fontSize: 25,
                      fontWeight: FontWeight.w500)),
              Divider(color: Colors.black, endIndent: 15, indent: 15,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,0,0),
                    child: Icon(Icons.supervised_user_circle, size: 40 , color: Colors.black,),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,5,5,5),
                    child: Text(
                        '${peopleBySchedule.peopleScheduled} ' +
                            "PESSOAS NESSE HORÁRIO",
                        style: TextStyle(
                            color: Color.fromRGBO(39, 39, 39, 50),
                            fontFamily: 'Bebas Neue',
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
              Divider(color: Colors.black, endIndent: 15, indent: 15,),
              if (peopleBySchedule.maxPeople - peopleBySchedule.peopleScheduled == 0) Column(
                children: [
                  Container(child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.error,size: 40,color: Colors.black),
                  )),
                  Container(
                    child: Text("HORÁRIO CHEIO",
                          style: TextStyle(
                              color: Color.fromRGBO(39, 39, 39, 50),
                              fontFamily: 'Bebas Neue',
                              fontSize: 25,
                              fontWeight: FontWeight.w500)),
                  ),
                ],
              ) else Container(
                child:
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text('${peopleBySchedule.maxPeople - peopleBySchedule.peopleScheduled} ' + "VAGAS DISPONÍVEIS",
                    style: TextStyle(
                        color: Color.fromRGBO(39, 39, 39, 50),
                        fontFamily: 'Bebas Neue',
                        fontSize: 25,
                        fontWeight: FontWeight.w500), textAlign: TextAlign.center,
                    ),
                  )
                ,
              ),
              // SizedBox(height: 15, width: 50),
              Padding(
                padding: const EdgeInsets.only(bottom: 0, top: 15),
                child: TextButton(
                    onPressed: ()  {
                      Navigator.popAndPushNamed(context, 'telaDetalhesHorario');
                    },
                    child: Container(
                      height: 55,
                      width: 150,
                      color: Colors.yellow,
                      child: Center(
                        child: Text("VER DETALHES", style: TextStyle(color: Colors.black,fontSize: 15)),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
