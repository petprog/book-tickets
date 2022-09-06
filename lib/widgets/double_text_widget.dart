import 'package:flutter/material.dart';
import '../common/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  final Function onTap;
  const DoubleTextWidget(
      {Key? key,
      required this.bigText,
      required this.smallText,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headlineStyle2,
        ),
        InkWell(
          onTap: () {
            onTap;
          },
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
