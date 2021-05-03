import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  String labelTextUsuario;
  String labelTextSenha;

  String errorTextUsuario;
  String errorTextSenha;

  TextEditingController controller;

  FormLogin({this.labelTextUsuario, this.labelTextSenha, this.controller, this.errorTextUsuario, this.errorTextSenha});

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool _focus = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FocusScope(
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
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
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
        FocusScope(
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
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
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
      ],
    );
  }
}