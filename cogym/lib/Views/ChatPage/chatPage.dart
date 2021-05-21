import 'package:cogym/Views/Commons/appBarComponent.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
        canvasColor: Color.fromRGBO(39, 39, 39, 50),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(
          backgroundColor: Color(0xffFFDD00),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                  onPressed: () {

                  });
            },
          ),
          centerTitle: true,
          title: Image.asset(
            'logo.png',
            fit: BoxFit.cover,
            height: 130,
          ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: Color(0xffFFDD00),
                      title: const Text('fechar pagina'),
                    ),
                    body: const Center(
                      child: Text(
                        'Fechar Pagina',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return Container(
              decoration: new BoxDecoration(
                  border: new Border(
                    bottom: new BorderSide(color: Colors.white, width: 1),
                  )),
              child: ListTile(
                /*onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => UserDetailDialog(
                          nome: "Joao",
                          cpf: "123.456.789-00",
                          email: "aaaaaa@gmail.com",
                          matricula: 123456,
                          unidade: "Unidade")
                          );
                },*/
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://image.flaticon.com/icons/png/512/64/64572.png'),
                ),
                title: Text('Fulano', style: TextStyle(color: Colors.white)),
                subtitle:
                Text('Bom dia, a academia abre aos sabados?', style: TextStyle(color: Colors.white)),
                trailing: Text("14h", style: TextStyle(color: Colors.white)),
              ),
            );
          }),
    );
  }
}
