import 'package:flutter/material.dart';
import 'package:squamobi/view/body.dart';

int currentPage = 0;

class PageModel extends ChangeNotifier {
  void CurrentPage(dynamic value) {
    currentPage = value;
    notifyListeners();
  }
}
