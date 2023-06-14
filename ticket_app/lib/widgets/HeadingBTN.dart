import 'package:flutter/material.dart';

import '../screens/Flight_View_all.dart';
import '../utils/App_Styles.dart';

class HeadlineWithBTN extends StatelessWidget {
  final String headline;
  final String BTNName;
  HeadlineWithBTN({
    super.key,
    required this.headline,
    required this.BTNName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headline,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FlightViewAll(),
                ));
          },
          child: Text(
            BTNName,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
