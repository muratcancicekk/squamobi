import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../constants.dart';
import '../../text_style.dart';
import '../../ui_helper.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    Key? key,
    required this.onPress,
    required this.text,
    required this.active,
    required this.save,
    required this.trial,
  }) : super(key: key);
  final VoidCallback onPress;
  final String text;
  final bool active;
  final int save, trial;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: popularCardBoxStyle,
          width: 18.w,
          height: 2.4.h,
          child: Center(
            child: Text(
              Constants.POPULAR,
              style: popularTextStyle,
            ),
          ),
        ),
        InkWell(
          onTap: onPress,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: active == true
                      ? UIHelper().DEEP_PURPLE.withOpacity(0.9)
                      : UIHelper().GREY.withOpacity(0.4),
                  width: active == true ? 6 : 2,
                ),
                color: active == true
                    ? UIHelper().DEEP_PURPLE_ACCENT.withOpacity(0.2)
                    : UIHelper().WHITE,
                borderRadius: BorderRadius.circular(18)),
            width: 29.w,
            height: 22.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  '$trial-days FREE TRAİL',
                  style: cardTextStyle,
                ),
                Spacer(),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: text,
                    style: cardTextStyle,
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: popularCardSaveBoxDecaration,
                    width: 16.w,
                    height: 3.h,
                    child: Center(
                      child: Text(
                        'Save %$save',
                        style: saveTextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
