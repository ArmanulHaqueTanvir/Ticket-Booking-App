import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/info/Flights_info.dart';
import 'package:ticket_app/screens/Flight_View_all.dart';
import 'package:ticket_app/screens/hotel_screen.dart';
import 'package:ticket_app/utils/App_Styles.dart';
import 'package:ticket_app/widgets/HeadingBTN.dart';
import 'package:ticket_app/widgets/tickets_view.dart';

import '../utils/app_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Styles.headLineStyle3),
                        const Gap(3),
                        Text("Book Tickets", style: Styles.headLineStyle),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/img_1.png"),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  width: size.width * 0.90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Search Bar end....
                const SizedBox(height: 30),
                HeadlineWithBTN(
                    headline: "Upcoming Flight", BTNName: "View all"),
                const Gap(25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: ticketList
                        .map((singleTickets) =>
                            TicketView(tickets: singleTickets))
                        .toList(),
                  ),
                ),

                const SizedBox(height: 20),
                HeadlineWithBTN(headline: "Hotels", BTNName: "View all"),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      HotelScreen(
                        image: "assets/one.png",
                        title: "Open Space",
                        place: "London",
                        price: 25,
                      ),
                      HotelScreen(
                        image: "assets/two.png",
                        title: "Global Will",
                        place: "London",
                        price: 40,
                      ),
                      HotelScreen(
                        image: "assets/three.png",
                        title: "Tallest Building",
                        place: "Dubai",
                        price: 68,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
