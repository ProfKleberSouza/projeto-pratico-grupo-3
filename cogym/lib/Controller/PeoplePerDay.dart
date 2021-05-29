import 'package:cogym/Mock/payloadsForTest.dart';
import 'package:cogym/Models/peopleByScheduleModel.dart';
import 'package:cogym/Constants/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PeoplePerDay{
  final String _baseUrl = '${Constants.BASE_API_URL}/peoplePerDay/${DateTime.now().day}';
  List<PeopleBySchedule> _peoplePerDay = [];
  List<PeopleBySchedule> get peoplePerDay => [..._peoplePerDay];

  int get peoplePerDayCount {
    return _peoplePerDay.length;
  }
  Future<void>loadPeoplePerDay() async {
    // final response = await http.get(Uri.parse('$_baseUrl.json'));
    // Map<String, dynamic> data = json.decode(response.body);
    Map<String, dynamic> data = json.decode(json.encode(DUMMY_PEOPLEBYSCHEDULECONST));
    _peoplePerDay.clear();
    if(data != null) {
      data.forEach((hour, shceduleData) {
        _peoplePerDay.add(PeopleBySchedule(
            hour: shceduleData['hour'],
            peopleScheduled: shceduleData['peopleScheduled'] ,
            maxPeople: shceduleData['maxPeople']));
      });
    }
    return _peoplePerDay;
  }
  // PeoplePerDay.fromJson(Map<String, dynamic> json) {
  //   month = json['month'];
  //   day = json[day];
  //   peoplePerDay = json[peoplePerDay];
  // }
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['month'] = this.month;
  //   data['day'] = this.day;
  //   data['peoplePerday'] = this.peoplePerDay;
  //   return data;
  // }
}