class PeopleBySchedule {
  int hour;
  int peopleScheduled;
  int maxPeople;
  PeopleBySchedule({this.hour, this.peopleScheduled, this.maxPeople});
  PeopleBySchedule.fromJson(Map<String, dynamic> json):
      this.hour = json['hour'],
      this.peopleScheduled = json["peopleScheduled"],
      this.maxPeople = json['maxPeople'];
}