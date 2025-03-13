import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Text(
            "Connexion",
            style: GoogleFonts.damion(fontSize: 48),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFFFFF4E9),
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                    color: Color(0xff212121), spreadRadius: 1, blurRadius: 0)
              ],
            ),
            child: Form(
                child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Text(
                        "Identifiant",
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
                          color: Color(0xffFCF8F4),
                          spreadRadius: -2,
                          blurRadius: 2),
                    ],
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.agdasima(
                          fontSize: 20, color: Color(0x33212121)),
                      hintText: "Identifiant...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
