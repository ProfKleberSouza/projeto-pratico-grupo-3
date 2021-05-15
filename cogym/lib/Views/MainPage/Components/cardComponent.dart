import 'package:cogym/Views/Commons/dateUtils.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget{
  final int hour;
  final DateTime dateTime;
  TextEditingController controller;
  CardComponent({this.dateTime,this.hour});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Card tapped.');
              },
              child: SizedBox(
                width:  MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                    Text(hour.toString() + "H", style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Bebas Neue',
                        fontSize: 25,
                        fontWeight: FontWeight.w500)),
                    Text(dateFormat(dateTime)),
                    // ignore: deprecated_member_use
                    FlatButton(onPressed: () {showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime.now(),
                    ).then((pickedDate) {
                      if (pickedDate == null) {
                        return;
                      }
                      // setState(() {
                      //   _selectedDate = pickedDate;
                      // });
                    });}, child: Image.asset('images/today_black_24dp.png'))

                  ],
              ),
            ),
          ),
          )]
    );
  }
}