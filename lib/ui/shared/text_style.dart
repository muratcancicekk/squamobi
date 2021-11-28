import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final headerTextStyle =
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10.w);
final categoriesTextStyle =
    TextStyle(fontWeight: FontWeight.w600, fontSize: 4.w);
final cardTextStyle = TextStyle(
    color: Colors.black, fontSize: 2.5.w, fontWeight: FontWeight.bold);
final splashContextTextStyle = TextStyle(
    color: Colors.black, fontWeight: FontWeight.w500, fontSize: 3.6.w);
final popularTextStyle =
    TextStyle(fontSize: 3.w, fontWeight: FontWeight.bold, color: Colors.white);
final buttonTitleTextStyle =
    TextStyle(fontSize: 5.w, fontWeight: FontWeight.w500);
final saveTextStyle =
    TextStyle(fontSize: 2.w, fontWeight: FontWeight.bold, color: Colors.white);
final popularCardBoxStyle = BoxDecoration(
  borderRadius: BorderRadius.only(
      topLeft: const Radius.circular(12), topRight: const Radius.circular(12)),
  color: Colors.grey.shade400.withOpacity(0.8),
);
final popularCardSaveBoxDecaration = BoxDecoration(
  borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(15),
    topLeft: Radius.circular(18),
  ),
  color: Colors.grey.shade400.withOpacity(0.7),
);
