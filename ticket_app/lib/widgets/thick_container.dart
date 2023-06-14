import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final bool? isColor;
  ThickContainer({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.50,
          color: isColor == null ? Colors.white : Color(0xFF8ACCf7),
        ),
      ),
    );
  }
}
