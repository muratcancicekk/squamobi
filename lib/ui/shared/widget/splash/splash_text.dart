import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../text_style.dart';

class splashContext extends StatelessWidget {
  const splashContext({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: 69.w,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(text: text, style: splashContextTextStyle),
        ),
      ),
    );
  }
}
