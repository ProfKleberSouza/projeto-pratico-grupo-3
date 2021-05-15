import 'package:flutter/material.dart';
// ignore: must_be_immutable
class SelectGymLabel extends StatefulWidget {
  String labelTextGym;
  
  TextEditingController controller;

  SelectGymLabel({this.labelTextGym, this.controller});

  @override
  _SelectGymLabelState createState() => _SelectGymLabelState();
}

class _SelectGymLabelState extends State<SelectGymLabel> {
  bool _focus = false;
  @override
  Widget build(BuildContext context) {
    return FocusScope(
      child:
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 25),
        child: Focus(
            onFocusChange: (focus)  {
              setState(() { _focus = focus; });
            },
            child:TextFormField(
              controller: widget.controller,
              style: TextStyle(color: Color(0xFF000000), fontSize: 16),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical:15, horizontal: 16),
                labelText: widget.labelTextGym,
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
    );

  }
  
}