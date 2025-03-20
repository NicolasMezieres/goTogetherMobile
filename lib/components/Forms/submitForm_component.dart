import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmitformComponent extends StatefulWidget {
  final String buttonText;
  final GlobalKey<FormState> formKey;
  final Function onSubmit;
  const SubmitformComponent(
      {super.key,
      required this.buttonText,
      required this.formKey,
      required this.onSubmit});

  @override
  State<SubmitformComponent> createState() => _SubmitformComponentState();
}

class _SubmitformComponentState extends State<SubmitformComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff212121),
                          blurRadius: 2,
                          offset: Offset(0, 2)),
                    ]),
                child: ElevatedButton(
                    onPressed: () {
                      if (widget.formKey.currentState!.validate()) {
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(content: Text("Envoie en cours...")));
                        // FocusScope.of(context).requestFocus(FocusNode());
                        widget.onSubmit();
                      }
                    },
                    style: ButtonStyle(
                        shadowColor: WidgetStatePropertyAll(Color(0xff212121)),
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xffF18046))),
                    child: Text(
                      widget.buttonText,
                      style: GoogleFonts.agdasima(
                          color: Color(
                            0xff212121,
                          ),
                          fontSize: 32),
                    )),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 20))
      ],
    );
  }
}
