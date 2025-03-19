import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/components/Forms/InputForm_component.dart';
import 'package:my_first_app/components/Forms/submitForm_component.dart';
import 'package:my_first_app/validator/identifiant_validator.dart';

class RegisterformComponent extends StatefulWidget {
  final Function(int) setCurrentIndex;
  const RegisterformComponent({super.key, required this.setCurrentIndex});

  @override
  State<RegisterformComponent> createState() => _RegisterformComponentState();
}

class _RegisterformComponentState extends State<RegisterformComponent> {
  bool isChecked = false;
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
          child: Column(
        children: [
          // InputformComponent(
          //   label: "Identifiant",
          //   placeholder: "Identifiant...",
          //   validator: identifiantValidator,
          // ),
          // InputformComponent(
          //   label: "Nom",
          //   placeholder: "Nom...",
          //   validator: identifiantValidator,
          // ),
          // InputformComponent(
          //   label: "Prénom",
          //   placeholder: "Prénom...",
          //   validator: identifiantValidator,
          // ),
          // InputformComponent(
          //   label: "Téléphone",
          //   placeholder: "N° +33 25 26 54 58...",
          //   validator: identifiantValidator,
          // ),
          // InputformComponent(
          //   label: "Email",
          //   placeholder: "Email...",
          //   validator: identifiantValidator,
          // ),
          // InputformComponent(
          //   label: "Mot de passe",
          //   placeholder: "Mot de passe...",
          //   validator: identifiantValidator,
          // ),
          // InputformComponent(
          //   label: "Confirmation",
          //   placeholder: "Mot de passe...",
          //   validator: identifiantValidator,
          // ),
          // SubmitformComponent(buttonText: "Inscription"),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.transparent,
                checkColor: Colors.black,
                side: WidgetStateBorderSide.resolveWith(
                    (states) => BorderSide(color: Colors.black, width: 2)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                value: isChecked,
                onChanged: (value) => {
                  setState(() {
                    isChecked = !isChecked;
                  })
                },
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: Text(
                      "J'accepte les termes et conditions \n d'utilisation",
                      style: GoogleFonts.agdasima(
                          fontSize: 16, color: Color(0xff212121)),
                      textAlign: TextAlign.center,
                      softWrap: false,
                      overflow: TextOverflow.visible,
                    )),
              )
            ],
          ),
          TextButton(
            onPressed: () {
              widget.setCurrentIndex(1);
            },
            child: Text(
              "Déjà inscrit ?",
              style:
                  GoogleFonts.agdasima(fontSize: 16, color: Color(0xff4E5C08)),
            ),
          )
        ],
      )),
    );
  }
}
