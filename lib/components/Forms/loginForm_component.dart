import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Services/get_request.dart';
import 'package:my_first_app/components/Forms/InputForm_component.dart';
import 'package:my_first_app/components/Forms/submitForm_component.dart';
import 'package:my_first_app/validator/identifiant_validator.dart';
import 'package:my_first_app/validator/password_validator.dart';

class LoginformComponent extends StatefulWidget {
  final Function(int) setCurrentIndex;

  const LoginformComponent({super.key, required this.setCurrentIndex});

  @override
  State<LoginformComponent> createState() => _LoginformComponentState();
}

class _LoginformComponentState extends State<LoginformComponent> {
  final formKey = GlobalKey<FormState>();
  final identifiantController = TextEditingController();
  final passwordController = TextEditingController();
  void onSubmit() {
    final identifiant = identifiantController.text;
    final password = passwordController.text;
    final data = {'identifiant': identifiant, 'password': password};
    requestGet('http://10.0.2.2:3000/auth/signin', data);
  }

  @override
  void dispose() {
    super.dispose();
    identifiantController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFFFFF4E9),
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(color: Color(0xff212121), spreadRadius: 1, blurRadius: 0)
        ],
      ),
      child: Form(
          key: formKey,
          child: Column(
            children: [
              InputformComponent(
                label: "Identifiant",
                placeholder: "Identifiant...",
                validator: identifiantValidator,
                controller: identifiantController,
              ),
              InputformComponent(
                label: "Mot de passe",
                placeholder: "Mot de passe...",
                isPassword: true,
                validator: passwordValidator,
                controller: passwordController,
              ),
              SubmitformComponent(
                buttonText: "Connexion",
                formKey: formKey,
                onSubmit: onSubmit,
              ),
              TextButton(
                onPressed: () {
                  widget.setCurrentIndex(2);
                },
                child: Text(
                  "Pas encore inscrit ?",
                  style: GoogleFonts.agdasima(
                      fontSize: 16, color: Color(0xff4E5C08)),
                ),
              )
            ],
          )),
    );
  }
}
