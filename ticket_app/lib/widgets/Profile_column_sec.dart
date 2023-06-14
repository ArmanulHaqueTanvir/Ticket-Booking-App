import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/App_Styles.dart';

class Profile_Column extends StatelessWidget {
  final String title1, title2, title3, title4;
  Profile_Column({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style:
                  Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w600),
            ),
            Gap(3),
            Text(
              title2,
              style: Styles.headLineStyle3.copyWith(color: Colors.grey),
            )
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title3,
              style:
                  Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w600),
            ),
            Gap(3),
            Text(
              title4,
              style: Styles.headLineStyle3.copyWith(color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
