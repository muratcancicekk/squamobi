import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../text_style.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.color,
    required this.text,
    required this.image,
  }) : super(key: key);
  final Color color;
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 8,
                  offset: Offset(0, 9), // changes position of shadow
                ),
              ],
            ),
            child: SvgPicture.asset(
              image,
              width: 12.w,
              color: color,
            ),
          ),
          Text(
            text,
            style: categoriesTextStyle,
          ),
        ],
      ),
    );
  }
}
