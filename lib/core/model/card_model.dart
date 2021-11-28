import 'package:flutter/material.dart';

bool active1 = false;
bool active2 = false;
bool active3 = true;

class CardModel extends ChangeNotifier {
  void choise(
    int choise,
  ) {
    switch (choise) {
      case 1:
        {
          if (active1 == false) {
            active1 = true;
            active2 = false;
            active3 = false;
          } else
            active1 = false;
        }
        break;
      case 2:
        {
          if (active2 == false) {
            active2 = true;
            active1 = false;
            active3 = false;
          } else
            active2 = false;
        }
        break;
      case 3:
        {
          if (active3 == false) {
            active3 = true;
            active2 = false;
            active1 = false;
          } else
            active3 = false;
        }
        break;
    }
  }
}
