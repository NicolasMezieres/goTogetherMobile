import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/components/Forms/InputForm_component.dart';
import 'package:my_first_app/components/Forms/registerForm_component.dart';
import 'package:my_first_app/components/Forms/submitForm_component.dart';

class RegisterPage extends StatefulWidget {
  final Function(int) setCurrentIndex;
  const RegisterPage({super.key, required this.setCurrentIndex});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Expanded(
            child: ListView(shrinkWrap: true, children: [
          Column(children: [
            Text(
              "Inscription",
              style: GoogleFonts.damion(fontSize: 48),
            ),
            RegisterformComponent(setCurrentIndex: widget.setCurrentIndex)
          ])
        ])));
  }
}
