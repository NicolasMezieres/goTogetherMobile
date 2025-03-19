import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/components/Forms/InputForm_component.dart';
import 'package:my_first_app/components/Forms/loginForm_component.dart';
import 'package:my_first_app/components/Forms/submitForm_component.dart';

class LoginPage extends StatefulWidget {
  final Function(int) setCurrentIndex;
  const LoginPage({super.key, required this.setCurrentIndex});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Expanded(
        child: ListView(shrinkWrap: true, children: [
          Column(
            children: [
              Text(
                "Connexion",
                style: GoogleFonts.damion(fontSize: 48),
              ),
              LoginformComponent(setCurrentIndex: widget.setCurrentIndex)
            ],
          )
        ]),
      ),
    );
  }
}
