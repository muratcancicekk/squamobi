import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:squamobi/ui/shared/text_style.dart';

import '../../ui_helper.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
    required this.onPress,
    required this.text,
    required this.active,
  }) : super(key: key);
  final VoidCallback onPress;
  final String text;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.7.w),
        alignment: Alignment.center,
        width: 29.w,
        height: 20.h,
        decoration: BoxDecoration(
            color: active == true
                ? UIHelper().DEEP_PURPLE_ACCENT.withOpacity(0.2)
                : UIHelper().WHITE,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: active == true
                  ? UIHelper().DEEP_PURPLE.withOpacity(0.9)
                  : UIHelper().GREY.withOpacity(0.4),
              width: active == true ? 6 : 2,
            )),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(text: text, style: cardTextStyle),
        ),
      ),
    );
  }
}
