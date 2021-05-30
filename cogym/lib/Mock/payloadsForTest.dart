import 'package:cogym/Models/peopleByScheduleModel.dart';

class PayloadsForTest {
  static const peopleByScheduleConst =
  '''[
{"hour": 6, "peopleScheduled": 10,"maxPeople": 30},
{"hour": 7, "peopleScheduled": 11,"maxPeople": 30},
{"hour": 8, "peopleScheduled:": 12,"maxPeople": 30},
{"hour": 9, "peopleScheduled": 13,"maxPeople": 30},
{"hour": 10, "peopleScheduled": 14, "maxPeople": 30},
{"hour": 11, "peopleScheduled": 15, "maxPeople": 30},
{"hour": 12, "peopleScheduled": 10, "maxPeople": 30},
{"hour": 13, "peopleScheduled": 10, "maxPeople": 30},
{"hour": 14, "peopleScheduled": 2, "maxPeople": 30},
{"hour": 15, "peopleScheduled": 3, "maxPeople": 30},
{"hour": 16, "peopleScheduled": 10, "maxPeople": 30},
{"hour": 17, "peopleScheduled": 15, "maxPeople": 30},
{"hour": 18, "peopleScheduled": 2, "maxPeople": 30},
{"hour": 19, "peopleScheduled": 10, "maxPeople": 30},
{"hour": 20, "peopleScheduled": 17, "maxPeople": 30},
{"hour": 21, "peopleScheduled": 21, "maxPeople": 30},
{"hour": 22, "peopleScheduled": 22, "maxPeople": 30},
{"hour": 23, "peopleScheduled": 23, "maxPeople": 30}
]''';
}

final DUMMY_PEOPLEBYSCHEDULECONST = [
  PeopleBySchedule(hour: 6, peopleScheduled: 10, maxPeople: 30),
  PeopleBySchedule(hour: 7, peopleScheduled: 11, maxPeople: 30),
  PeopleBySchedule(hour: 8, peopleScheduled: 12, maxPeople: 30),
  PeopleBySchedule(hour: 9, peopleScheduled: 13, maxPeople: 30),
  PeopleBySchedule(hour: 10, peopleScheduled: 14, maxPeople: 30),
  PeopleBySchedule(hour: 11, peopleScheduled: 15, maxPeople: 30),
  PeopleBySchedule(hour: 12, peopleScheduled: 10, maxPeople: 30),
  PeopleBySchedule(hour: 13, peopleScheduled: 10, maxPeople: 30),
  PeopleBySchedule(hour: 14, peopleScheduled: 23, maxPeople: 30),
  PeopleBySchedule(hour: 15, peopleScheduled: 10, maxPeople: 30),
  PeopleBySchedule(hour: 16, peopleScheduled: 5, maxPeople: 30),
  PeopleBySchedule(hour: 17, peopleScheduled: 10, maxPeople: 30),
  PeopleBySchedule(hour: 18, peopleScheduled: 3, maxPeople: 30),
  PeopleBySchedule(hour: 19, peopleScheduled: 10, maxPeople: 30),
  PeopleBySchedule(hour: 20, peopleScheduled: 8, maxPeople: 30),
  PeopleBySchedule(hour: 21, peopleScheduled: 21, maxPeople: 30),
  PeopleBySchedule(hour: 22, peopleScheduled: 22, maxPeople: 30),
  PeopleBySchedule(hour: 23, peopleScheduled: 23, maxPeople: 30)
];

