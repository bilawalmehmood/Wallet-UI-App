import 'package:flutter/material.dart';

@immutable
abstract class AppColors {
  // Colors of data
  static const Color primaryColor = Color(0xFFCADCED);
  static const Color deepOrangeColor = Colors.deepOrange;
  static const Color secondryColor = Color.fromRGBO(19, 28, 33, 1);
  static const Color greyColor = Colors.grey;
  static const Color blackColor = Colors.black;

  //List of data
  static List pieColors = [
    Colors.indigo[400],
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.deepOrange,
    Colors.brown,
  ];
  static List<BoxShadow> neumorpShadow = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: -5,
        offset: const Offset(-5, -5),
        blurRadius: 30),
    BoxShadow(
        color: Colors.blue[900]!.withOpacity(0.2),
        spreadRadius: 2,
        offset: const Offset(5, 5),
        blurRadius: 20)
  ];
}
