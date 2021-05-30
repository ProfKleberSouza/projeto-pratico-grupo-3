import 'package:cogym/Views/Commons/sideBarComponent.dart';
import 'package:flutter/material.dart';

class UserChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ThisAppBar(),
        drawer: SideBarComponent(),
        body: Text('Bom dia, a academia abre aos sabados?', style: TextStyle(color: Colors.white)),
    );
  }
}


class ThisAppBar extends StatefulWidget implements PreferredSizeWidget {
  const ThisAppBar({Key key, this.whichIcon, this.whichAction}) : super(key: key);

  _ThisAppBarState createState() => _ThisAppBarState();
  final String whichIcon;
  final String whichAction;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ThisAppBarState extends State<ThisAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black, size: 40,),
          onPressed: () => Scaffold.of(context).openDrawer()
      ),
      backgroundColor: Color(0xffFFDD00),
      centerTitle: true,
      title: Center(
        // ignore: deprecated_member_use
          child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, 'telaPrincipal');
              },
              child: Image.asset(
                'images/Cogymicon_1.png',
                width: 100,
              ))),
      actions: <Widget>[
        IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.close,
                color: Colors.black,
                size: 40,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
    );
  }
}
