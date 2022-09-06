import 'package:flutter/material.dart';

import '../../../common/common.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(15),
            vertical: AppLayout.getHeight(18)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getWidth(10),
          ),
          color: const Color(0xD91130CE),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
