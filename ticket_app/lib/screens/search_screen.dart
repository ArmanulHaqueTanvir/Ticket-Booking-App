import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/screens/HomeScreen.dart';
import 'package:ticket_app/screens/ticket_screen.dart';
import 'package:ticket_app/utils/App_Styles.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/widgets/reusablebtn.dart';

import '../widgets/HeadingBTN.dart';
import '../widgets/appicontext.dart';
import 'Flight_View_all.dart';

class SearchScreen extends StatefulWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    fixedSize: Size(AppLayout.getWidth(140), 40),
    backgroundColor: const Color(0xD91130CE),
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  );
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
          children: [
            Text(
              "What are \nyou looking for?",
              style: Styles.headLineStyle
                  .copyWith(fontSize: AppLayout.getWidth(30)),
            ),
            const Gap(30),
            ReuseableBtn(
                pressedBtn1: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                Button1: "Airline Tickets",
                pressedBtn2: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TicketScreen(),
                      ));
                },
                Button2: "Hotels"),
            const Gap(20),
            AppIconText(
              title: "Departure",
              icon: Icons.flight_takeoff_rounded,
            ),
            const Gap(20),
            AppIconText(
              title: "Arrival",
              icon: Icons.flight_land_rounded,
            ),
            const Gap(20),
            ElevatedButton(
              style: widget.raisedButtonStyle,
              onPressed: () {},
              child: const Text(
                "Find Tickets",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Gap(20),
            HeadlineWithBTN(
              headline: "Upcoming Flights",
              BTNName: "View all",
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(20),
                    ),
                  ),
                  height: AppLayout.getHeight(400),
                  width: MediaQuery.of(context).size.width * 0.42,
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/sit.jpg"),
                          ),
                        ),
                      ),
                      const Gap(20),
                      Text(
                        "20% Discount on the early booking of the flight! Don't miss this.",
                        style: Styles.headLineStyle2
                            .copyWith(color: Colors.black45),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(10)),
                          width: MediaQuery.of(context).size.width * 0.44,
                          height: AppLayout.getHeight(184),
                          decoration: BoxDecoration(
                            color: const Color(0xFF3A8888),
                            borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(18),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headLineStyle2
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                "Take the survey about our services and get discount",
                                style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -15,
                          right: -60,
                          child: Container(
                            padding: EdgeInsets.all(
                              AppLayout.getHeight(30),
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(
                                width: 18,
                                color: Color(0xFF189999),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Gap(20),
                    Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(10)),
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: AppLayout.getHeight(184),
                      decoration: BoxDecoration(
                        color: Color(0xFFEC6545),
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(18),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Take Love",
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            textAlign: TextAlign.justify,
                            "This is going to be the best option for you! Claim it for enjoy your ride.",
                            style: Styles.headLineStyle3.copyWith(
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
