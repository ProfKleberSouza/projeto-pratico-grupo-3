import 'peopleByScheduleModel.dart';

class PeoplePerDay {
  final List<PeopleBySchedule> peoplePerDay;
  PeoplePerDay({this.peoplePerDay});

  PeoplePerDay.fromJson(List<dynamic> peopleByScheduleJson) :
        peoplePerDay = peopleByScheduleJson.map((peopleBySchedule) => PeopleBySchedule.fromJson(peopleBySchedule)).toList();
}