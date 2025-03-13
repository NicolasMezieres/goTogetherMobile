import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class AppbarPage extends StatefulWidget {
  const AppbarPage({super.key});

  @override
  State<AppbarPage> createState() => _AppbarPageState();
}

class _AppbarPageState extends State<AppbarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
            boxShadow: [
              BoxShadow(color: Colors.black, spreadRadius: 2, blurRadius: 0),
              BoxShadow(
                  color: Color(0xffFFF4E9), spreadRadius: 1, blurRadius: 0)
            ]),
        child: Stack(
          children: [
            Positioned(
                left: 40,
                top: 30,
                child: Icon(
                  LucideIcons.sun,
                  color: Color(0xffF18046),
                  size: 37.5,
                )),
            Transform.translate(
              offset: Offset(MediaQuery.of(context).size.width * 0.35, 40),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0xffFFF4E9),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 100, // Taille ajustée
                    height: 100, // Taille ajustée
                    fit: BoxFit
                        .cover, // Assurez-vous que l'image ne soit pas déformée
                  ),
                ),
              ),
            ),
            Positioned(
                right: 40,
                top: 30,
                child: Icon(
                  LucideIcons.moon,
                  color: Color(0xff212121),
                  size: 37.5,
                )),
          ],
        ));
  }
}
