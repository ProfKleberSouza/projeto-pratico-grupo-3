import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarComponent extends StatefulWidget implements PreferredSizeWidget {
  const AppBarComponent({Key key, this.whichIcon, this.whichAction}) : super(key: key);

  _AppBarState createState() => _AppBarState();
  final String whichIcon;
  final String whichAction;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarState extends State<AppBarComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black, size: 40,),
            onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            title: Center(
              // ignore: deprecated_member_use
                child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'telaPrincipal');
                    },
                    child: Image.asset(
                      'images/Cogymicon_1.png', width: 100,
                    )
                )
            ),
            actions: <Widget>[
              // ignore: deprecated_member_use
              FlatButton(
                  onPressed: () {
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime.now().add(const Duration(days: 30)),
                    ).then((pickedDate) {
                      if (pickedDate == null) {
                        return;
                      }
                      // setState(() {
                      //   _selectedDate = pickedDate;
                      // });
                    });
                  },
                  child: Image.asset('images/today_black_24dp.png'))
            ],
            backgroundColor: Color(0xffFFDD00),
          ),
        )
      ],
    );
  }
}
