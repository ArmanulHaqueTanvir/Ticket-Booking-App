import 'package:flutter/material.dart';

import '../utils/App_Styles.dart';

class AppIconText extends StatelessWidget {
  IconData icon;
  String title;
  AppIconText({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFBFC2DF)),
          const SizedBox(width: 15),
          Text(
            title,
            style: Styles.headLineStyle.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
