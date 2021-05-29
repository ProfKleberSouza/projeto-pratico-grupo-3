import 'package:cogym/Models/peopleByScheduleModel.dart';
import 'package:cogym/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PeoplePerDayProvider with ChangeNotifier{
  final String _baseUrl = '${Constants.BASE_API_URL}/peoplePerDay';
  List<PeopleBySchedule> _peoplePerDay = [];
  List<PeopleBySchedule> get peoplePerDay => [..._peoplePerDay];

  int get peoplePerDayCount {
    return _peoplePerDay.length;
  }
  Future<List<PeopleBySchedule>>loadPeoplePerDay()  async {
    try {
      final response = await http.get(Uri.parse('$_baseUrl.json'));
      final data = json.decode(response.body);
      //return data;
      // final data = json.decode(PayloadsForTest.peopleByScheduleConst);

      _peoplePerDay.clear();
      if(data != null) {
        data.forEach((data) {
          _peoplePerDay.add(PeopleBySchedule(
              hour: data['hour'],
              peopleScheduled: data['peopleScheduled'] ,
              maxPeople: data['maxPeople']));
        });
      }
      return _peoplePerDay;
    } catch (error) {
    throw error;
    }
  }
}