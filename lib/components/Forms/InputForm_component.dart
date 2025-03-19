import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputformComponent extends StatefulWidget {
  final String label;
  final String placeholder;
  final bool isPassword;
  final Function validator;
  final TextEditingController controller;
  const InputformComponent(
      {super.key,
      required this.label,
      required this.placeholder,
      this.isPassword = false,
      required this.validator,
      required this.controller});

  @override
  State<InputformComponent> createState() => _InputformComponentState();
}

class _InputformComponentState extends State<InputformComponent> {
  bool isError = false;
  String textError = "";
  void updateErrorState(bool error, String errorText) {
    setState(() {
      isError = error;
      textError = errorText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Text(
                widget.label,
                style: GoogleFonts.grandifloraOne(fontSize: 24),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 5),
                  height: 0.5,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x7E212121),
                spreadRadius: 0,
                blurRadius: 0,
              ),
              BoxShadow(
                  color: Color(0xffFCF8F4), spreadRadius: -2, blurRadius: 2),
            ],
          ),
          child: TextFormField(
            forceErrorText: null,
            obscureText: widget.isPassword,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xffF18046))),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xffF18046))),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
              errorStyle: TextStyle(fontSize: 0, color: Colors.transparent),
              hintStyle:
                  GoogleFonts.agdasima(fontSize: 20, color: Color(0x33212121)),
              hintText: widget.placeholder,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.transparent, width: 0),
              ),
            ),
            onChanged: (value) => widget.validator(value, updateErrorState),
            validator: (value) => widget.validator(value, updateErrorState),
            controller: widget.controller,
          ),
        ),
        if (isError)
          Text(
            textError,
            style: GoogleFonts.agdasima(color: Color(0xffD71515), fontSize: 16),
          ),
        Padding(
          padding: EdgeInsets.only(top: 20),
        )
      ],
    );
  }
}
