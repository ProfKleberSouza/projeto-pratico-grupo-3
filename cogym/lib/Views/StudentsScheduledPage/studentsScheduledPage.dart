import 'package:cogym/Views/Commons/sideBarComponent.dart';
import 'package:flutter/material.dart';
import 'Components/userDetailDialog.dart';
import 'Components/printDialog.dart';

class StudentsScheduledPage extends StatefulWidget {
  StudentScheduledState createState() => StudentScheduledState();
}

class StudentScheduledState extends State<StudentsScheduledPage> {
  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThisAppBar(),
      drawer: SideBarComponent(),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return Container(
              decoration: new BoxDecoration(
                  border: new Border(
                bottom: new BorderSide(color: Colors.white, width: 1),
              )),
              child: ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => UserDetailDialog(
                          nome: "Joao",
                          cpf: "123.456.789-00",
                          email: "aaaaaa@gmail.com",
                          matricula: 123456,
                          unidade: "Unidade"));
                },
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://image.flaticon.com/icons/png/512/64/64572.png'),
                ),
                title: Text('Fulano', style: TextStyle(color: Colors.white)),
                subtitle:
                    Text('da Silva', style: TextStyle(color: Colors.white)),
                trailing: Text("14h", style: TextStyle(color: Colors.white)),
              ),
            );
          }),
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
                child: const Icon(
                  Icons.save,
                  color: Colors.black,
                  size: 40,
                ),
              ),
              onPressed: () {
                showDialog(
                    context: context, builder: (context) => PrintDialog());
              }
          ),
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
              })
        ],
    );
  }
}