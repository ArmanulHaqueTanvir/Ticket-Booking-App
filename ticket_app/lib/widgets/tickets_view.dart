import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/App_Styles.dart';
import 'package:ticket_app/widgets/thick_container.dart';
import '../utils/app_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> tickets;
  final bool? isColor;
  TicketView({
    super.key,
    this.isColor,
    required this.tickets,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(170),
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* 
              Showing the blue part of the ticket Card..
            */

            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        tickets['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(isColor: true),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints contraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (contraints.constrainWidth() / 6).floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : const Color(0xFF8ACCf7),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : const Color(0xFF8ACCf7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThickContainer(isColor: true),
                      Expanded(child: Container()),
                      Text(
                        tickets['to']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          tickets['from']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3
                                  .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Center(
                        child: Text(
                          tickets['flying_time'],
                          style: isColor == null
                              ? Styles.headLineStyle3.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)
                              : Styles.headLineStyle3
                                  .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          tickets['to']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3
                                  .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /* 
              Showing the orage part of the ticket Card..
            */

            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: isColor == null
                                        ? Colors.white
                                        : Colors.grey.shade600),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: isColor == null
                      ? const Radius.circular(21)
                      : const Radius.circular(0),
                  bottomRight: isColor == null
                      ? const Radius.circular(21)
                      : const Radius.circular(0),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        tickets['date'],
                        style: isColor == null
                            ? Styles.headLineStyle2
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle2
                                .copyWith(color: Colors.black),
                      ),
                      Text(
                        "Date",
                        style: isColor == null
                            ? Styles.headLineStyle2
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle2
                                .copyWith(color: Styles.primaryColor),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        tickets['departure'],
                        style: isColor == null
                            ? Styles.headLineStyle2
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle2
                                .copyWith(color: Colors.black),
                      ),
                      Text(
                        "Departure Time",
                        style: isColor == null
                            ? Styles.headLineStyle2
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle2
                                .copyWith(color: Styles.primaryColor),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        tickets['number'].toString(),
                        style: isColor == null
                            ? Styles.headLineStyle2
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle2
                                .copyWith(color: Colors.black),
                      ),
                      Text(
                        "Date",
                        style: isColor == null
                            ? Styles.headLineStyle2
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle2
                                .copyWith(color: Styles.primaryColor),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
