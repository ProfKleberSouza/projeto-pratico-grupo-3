import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginForm extends StatefulWidget {
  String labelTextUsuario;
  String labelTextSenha;

  String errorTextUsuario;
  String errorTextSenha;

  TextEditingController controller;

  LoginForm({this.labelTextUsuario, this.labelTextSenha, this.controller, this.errorTextUsuario, this.errorTextSenha});

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<LoginForm> {
  bool _focus = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FocusScope(
          child:
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
              child: Focus(
                onFocusChange: (focus)  {
                  setState(() { _focus = focus; });
                },
                child:TextFormField(
                  controller: widget.controller,
                  validator: widget.errorTextUsuario == "" ? null : (s) {
                    if (s.isEmpty)
                      return widget.errorTextUsuario;
                    else
                      return null;
                  },
                  style: TextStyle(color: Color(0xFFFCF8EF), fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical:15, horizontal: 16),
                    labelText: widget.labelTextUsuario,
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Bebas Neue',
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow( // bottomLeft
                            offset: Offset(-1.5, -1.5),
                            color: Colors.white
                        ),
                        Shadow( // bottomRight
                            offset: Offset(1.5, -1.5),
                            color: Colors.white
                        ),
                        Shadow( // topRight
                            offset: Offset(1.5, 1.5),
                            color: Colors.white
                        ),
                        Shadow( // topLeft
                            offset: Offset(-1.5, 1.5),
                            color: Colors.white
                        ),
                      ]
                    ),
                    errorStyle: TextStyle(
                      color: Theme.of(context).errorColor,
                    ),
                    suffixIcon: _focus ? IconButton(
                      icon: Icon(Icons.clear, color: Color(0xFFFCF8EF),),
                      onPressed: () {
                        setState(() { widget.controller.text = ""; });
                      },
                    ) : null,
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFFFCF8EF),
                      ),
                    ),
                  ),
                )
          ),
            ),
        ),
        FocusScope(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
            child: Focus(
                onFocusChange: (focus)  {
                  setState(() { _focus = focus; });
                },
                child:TextFormField(
                  controller: widget.controller,
                  validator: widget.errorTextSenha == "" ? null : (s) {
                    if (s.isEmpty)
                      return widget.errorTextSenha;
                    else
                      return null;
                  },
                  style: TextStyle(color: Color(0xFFFCF8EF), fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical:15, horizontal: 16),
                    labelText: widget.labelTextSenha,
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Bebas Neue',
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow( // bottomLeft
                            offset: Offset(-1.5, -1.5),
                            color: Colors.white
                        ),
                        Shadow( // bottomRight
                            offset: Offset(1.5, -1.5),
                            color: Colors.white
                        ),
                        Shadow( // topRight
                            offset: Offset(1.5, 1.5),
                            color: Colors.white
                        ),
                        Shadow( // topLeft
                            offset: Offset(-1.5, 1.5),
                            color: Colors.white
                        ),
                      ]
                    ),
                    errorStyle: TextStyle(
                      color: Theme.of(context).errorColor,
                    ),
                    suffixIcon: _focus ? IconButton(
                      icon: Icon(Icons.clear, color: Color(0xFFFCF8EF),),
                      onPressed: () {
                        setState(() { widget.controller.text = ""; });
                      },
                    ) : null,
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFFFCF8EF),
                      ),
                    ),
                  ),
                )
            ),
          ),
        ),
      ],
    );
  }
}