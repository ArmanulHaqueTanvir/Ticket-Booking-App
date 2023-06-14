import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:ticket_app/info/Flights_info.dart';
import 'package:ticket_app/screens/search_screen.dart';
import 'package:ticket_app/widgets/AppColumnLayout.dart';
import '../utils/App_Styles.dart';
import '../utils/app_layout.dart';
import '../widgets/reusablebtn.dart';
import '../widgets/tickets_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              children: [
                Text(
                  "Tickets",
                  style: Styles.headLineStyle
                      .copyWith(fontSize: AppLayout.getWidth(30)),
                ),
                Gap(AppLayout.getHeight(20)),
                ReuseableBtn(
                    pressedBtn1: () {
                      // Get.to(SearchScreen());
                    },
                    Button1: "Upcoming",
                    pressedBtn2: () {},
                    Button2: "Previous"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(tickets: ticketList[0], isColor: true),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(18),
                      vertical: AppLayout.getHeight(18)),
                  margin: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          AppColumnLayout(
                              firstText: "Flutter Dash",
                              secoundText: "passenger",
                              alignment: CrossAxisAlignment.start),
                          Expanded(child: Container()),
                          AppColumnLayout(
                              firstText: "5221 364869",
                              secoundText: "passfort",
                              alignment: CrossAxisAlignment.end),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Divider(
                        height: 10,
                        thickness: 0.9,
                        color: Colors.black38,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          AppColumnLayout(
                              firstText: "0055 444 77147",
                              secoundText: "Number of E-ticket",
                              alignment: CrossAxisAlignment.start),
                          Expanded(child: Container()),
                          AppColumnLayout(
                              firstText: "B2SG28",
                              secoundText: "Booking Code",
                              alignment: CrossAxisAlignment.end),
                        ],
                      ),
                      const Gap(20),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    "**** 0985",
                                    style: Styles.headLineStyle3,
                                  ),
                                ],
                              ),
                              const Gap(5),
                              Text(
                                "Payment Method",
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$249.99",
                                style: Styles.headLineStyle3,
                              ),
                              Text(
                                "Price",
                                style: Styles.headLineStyle4,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  margin:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15)),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        data: 'https://github.com/ArmanulHaqueTanvir',
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                TicketView(tickets: ticketList[0])
              ],
            ),
            Positioned(
              left: AppLayout.getHeight(20),
              top: AppLayout.getHeight(300),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: AppLayout.getHeight(20),
              top: AppLayout.getHeight(300),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2),
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
