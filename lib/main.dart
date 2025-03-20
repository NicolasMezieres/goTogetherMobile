import 'package:flutter/material.dart';
import 'package:my_first_app/components/AppBar_Page.dart';
import 'package:my_first_app/components/loader.dart';
import 'package:my_first_app/components/navBar/adminNavBar_page.dart';
import 'package:my_first_app/components/navBar/userNavBar_page.dart';
import 'package:my_first_app/components/navBar/visitNavBar_page.dart';
import 'package:my_first_app/pages/(connection)/login_page.dart';
import 'package:my_first_app/pages/(connection)/register_page.dart';
import 'package:my_first_app/pages/event_page.dart';
import 'package:my_first_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  bool isLoading = false;
  setCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  setLoading(bool value) {
    setState(() {
      isLoading = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(120), child: AppbarPage()),
          body: Stack(children: [
            [
              HomePage(),
              LoginPage(
                setCurrentIndex: setCurrentIndex,
                setLoading: setLoading,
              ),
              RegisterPage(
                setCurrentIndex: setCurrentIndex,
              ),
            ][currentIndex],
            if (isLoading == true) Loader(),
          ]),
          bottomNavigationBar: VisitnavbarPage(
              currentIndex: currentIndex, setCurrentIndex: setCurrentIndex)),
    );
  }
}
