import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../text_style.dart';
import '../../ui_helper.dart';

class ElevatedTextButton extends StatelessWidget {
  const ElevatedTextButton({
    Key? key,
    required this.onPress,
    required this.text,
  }) : super(key: key);
  final VoidCallback onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: UIHelper().DEEP_PURPLE_ACCENT,
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          //////// HERE
          minimumSize: Size(100.w, 6.h)),
      onPressed: onPress,
      child: Text(
        text,
        style: buttonTitleTextStyle,
      ),
    );
  }
}
