import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

class VisitnavbarPage extends StatefulWidget {
  final int currentIndex;
  final Function(int) setCurrentIndex;
  const VisitnavbarPage(
      {super.key, required this.currentIndex, required this.setCurrentIndex});

  @override
  State<VisitnavbarPage> createState() => _VisitnavbarPageState();
}

class _VisitnavbarPageState extends State<VisitnavbarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50), topLeft: Radius.circular(50)),
            boxShadow: [
              BoxShadow(color: Colors.black, spreadRadius: 1, blurRadius: 0)
            ]),
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            child: BottomNavigationBar(
                currentIndex: widget.currentIndex,
                onTap: (index) => widget.setCurrentIndex(index),
                selectedItemColor: Color(0xffF18046),
                unselectedItemColor: Color(0xff212121),
                iconSize: 24,
                elevation: 10,
                backgroundColor: Color(0xffFFF4E9),
                selectedLabelStyle: GoogleFonts.agdasima(),
                unselectedLabelStyle: GoogleFonts.agdasima(),
                selectedFontSize: 16,
                unselectedFontSize: 16,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        LucideIcons.home,
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        LucideIcons.userCircle2,
                      ),
                      label: "Login"),
                  BottomNavigationBarItem(
                      icon: Icon(LucideIcons.userPlus), label: "Register"),
                ])));
  }
}
