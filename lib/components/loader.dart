import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  const Loader({super.key});

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return const Positioned(
      right: 20,
      top: 20,
      child: CircularProgressIndicator(
        color: Color(0xff212121),
      ),
    );
  }
}
