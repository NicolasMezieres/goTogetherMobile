import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

class AdminnavbarPage extends StatelessWidget {
  const AdminnavbarPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50), topLeft: Radius.circular(50)),
            boxShadow: [
              BoxShadow(color: Colors.black, spreadRadius: 3, blurRadius: 0),
              BoxShadow(
                  color: Color(0xffFFF4E9), spreadRadius: 1, blurRadius: 0)
            ]),
        child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: BottomNavigationBar(
                  selectedItemColor: Color(0xffF18046),
                  unselectedItemColor: Color(0xff212121),
                  iconSize: 24,
                  elevation: 10,
                  backgroundColor: Color(0xffFFF4E9),
                  selectedLabelStyle: GoogleFonts.agdasima(),
                  unselectedLabelStyle: GoogleFonts.agdasima(),
                  selectedFontSize: 16,
                  unselectedFontSize: 16,
                  type: BottomNavigationBarType.fixed,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        LucideIcons.home,
                      ),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                          LucideIcons.badgePlus,
                        ),
                        label: "Create"),
                    BottomNavigationBarItem(
                        icon: Icon(LucideIcons.calendar), label: "My Events"),
                    BottomNavigationBarItem(
                        icon: Icon(LucideIcons.calendarHeart),
                        label: "Participation"),
                    BottomNavigationBarItem(
                        icon: Icon(FontAwesomeIcons.ellipsis), label: "Plus")
                  ]),
            )));
  }
}
