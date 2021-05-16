import 'package:flutter/material.dart';
import './formLogin.dart';

class RegisterPage extends StatefulWidget {
  String labelTextUnidade;
  String labelTextEndereco;

  String errorTextUnidade;
  String errorTextEndereco;

  TextEditingController controller;

  RegisterPage(
      {this.labelTextUnidade,
      this.labelTextEndereco,
      this.controller,
      this.errorTextUnidade,
      this.errorTextEndereco});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _focus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
          title: Container(
              height: 120,
              child: FittedBox(
                  child: Image.asset('images/blackLogo.png')),
              )
        ),
        body:
            Column(
                mainAxisAlignment: MainAxisAlignment.center, children: [

              FocusScope(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                  child: Focus(
                    onFocusChange: (focus) {
                      setState(() {
                        _focus = focus;
                      });
                    },
                    child: TextFormField(
                      controller: widget.controller,
                      validator: widget.errorTextUnidade == ""
                          ? null
                          : (s) {
                        if (s.isEmpty)
                          return widget.errorTextUnidade;
                        else
                          return null;
                      },
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                    labelText: widget.labelTextUnidade,
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Bebas Neue',
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        shadows: [
                          Shadow(
                              // bottomLeft
                              offset: Offset(-1.5, -1.5),
                              color: Colors.white),
                          Shadow(
                              // bottomRight
                              offset: Offset(1.5, -1.5),
                              color: Colors.white),
                          Shadow(
                              // topRight
                              offset: Offset(1.5, 1.5),
                              color: Colors.white),
                          Shadow(
                              // topLeft
                              offset: Offset(-1.5, 1.5),
                              color: Colors.white),
                        ]),
                    errorStyle: TextStyle(
                          color: Theme.of(context).errorColor,
                        ),
                        suffixIcon: _focus
                            ? IconButton(
                          icon: Icon(
                            Icons.clear,
                            color: Color(0xFFFCF8EF),
                          ),
                          onPressed: () {
                            setState(() {
                              widget.controller.text = "";
                            });
                          },
                        )
                            : null,
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
                    ),
                  ),
                ),
              ),
              FocusScope(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                  child: Focus(
                      onFocusChange: (focus) {
                        setState(() {
                          _focus = focus;
                        });
                      },
                      child: TextFormField(
                        controller: widget.controller,
                        validator: widget.errorTextEndereco == ""
                            ? null
                            : (s) {
                          if (s.isEmpty)
                            return widget.errorTextEndereco;
                          else
                            return null;
                        },
                        style: TextStyle(color: Color(0xFFFCF8EF), fontSize: 16),
                        decoration: InputDecoration(
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                          labelText: widget.labelTextEndereco,
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Bebas Neue',
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              shadows: [
                                Shadow(
                                  // bottomLeft
                                    offset: Offset(-1.5, -1.5),
                                    color: Colors.white),
                                Shadow(
                                  // bottomRight
                                    offset: Offset(1.5, -1.5),
                                    color: Colors.white),
                                Shadow(
                                  // topRight
                                    offset: Offset(1.5, 1.5),
                                    color: Colors.white),
                                Shadow(
                                  // topLeft
                                    offset: Offset(-1.5, 1.5),
                                    color: Colors.white),
                              ]),
                          errorStyle: TextStyle(
                            color: Theme.of(context).errorColor,
                          ),
                          suffixIcon: _focus
                              ? IconButton(
                            icon: Icon(
                              Icons.clear,
                              color: Color(0xFFFCF8EF),
                            ),
                            onPressed: () {
                              setState(() {
                                widget.controller.text = "";
                              });
                            },
                          )
                              : null,
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
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.amberAccent),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(39, 39, 39, 50)),
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Bebas Neue',
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FormLogin()));
                  },
                ),
              ),
        ]));
  }
}
