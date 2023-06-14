import 'package:flutter/material.dart';

import '../utils/App_Styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText, secoundText;
  final CrossAxisAlignment alignment;
  AppColumnLayout(
      {super.key,
      required this.firstText,
      required this.secoundText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500),
        ),
        Text(
          secoundText,
          style: Styles.headLineStyle4,
        ),
      ],
    );
  }
}
