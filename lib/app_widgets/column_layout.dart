import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../common/app_layout.dart';
import '../common/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Color firstTextColor;
  final Color secondTextolor;
  final CrossAxisAlignment alignment;
  const ColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      required this.firstTextColor,
      required this.secondTextolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,
            style: Styles.headlineStyle3.copyWith(color: firstTextColor)),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,
            style: Styles.headlineStyle4.copyWith(color: secondTextolor)),
      ],
    );
  }
}
