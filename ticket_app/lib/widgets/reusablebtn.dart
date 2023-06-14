import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReuseableBtn extends StatelessWidget {
  dynamic pressedBtn1;
  dynamic pressedBtn2;

  final String Button1, Button2;

  ReuseableBtn({
    super.key,
    required this.pressedBtn1,
    required this.pressedBtn2,
    required this.Button1,
    required this.Button2,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0x0ff4f6fd),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: pressedBtn1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.44,
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 7),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    Button1,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: pressedBtn2,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.44,
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 7),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(50)),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text(
                    Button2,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
