import 'package:flutter/material.dart';

import '../../text_style.dart';

class Rule extends StatelessWidget {
  const Rule({
    Key? key,
    required this.onPress,
    required this.ruleText,
  }) : super(key: key);
  final VoidCallback onPress;
  final String ruleText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Text(
        ruleText,
        style: ruleTextStyle,
      ),
    );
  }
}
