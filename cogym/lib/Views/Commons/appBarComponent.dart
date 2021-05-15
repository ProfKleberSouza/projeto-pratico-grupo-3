import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarComponent extends StatefulWidget implements PreferredSizeWidget {
  _AppBarState createState() => _AppBarState();

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
            title: Center(
              // ignore: deprecated_member_use
                child: FlatButton(
                    onPressed: () {},
                    child: Image.asset(
                      'images/Cogymicon_1.png', width: 100,
                    )
                )
            ),
            // ignore: deprecated_member_use
            // leading: GestureDetector(
            //   onTap: () {
            //
            //   },
            //   child: Image.asset('images/menu_black_24dp.png'),
            //       // fit: BoxFit.fitHeight),
            // ),
            backgroundColor: Color(0xffFFDD00),
          ),
        )
      ],
    );
  }
}
