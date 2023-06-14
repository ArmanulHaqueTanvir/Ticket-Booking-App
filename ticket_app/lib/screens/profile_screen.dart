import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/App_Styles.dart';
import 'package:ticket_app/utils/app_layout.dart';
import '../widgets/Profile_column_sec.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20),
          ),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getHeight(86),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/img_1.png"),
                    ),
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(10),
                    ),
                  ),
                ),
                const Gap(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book Ticket",
                      style: Styles.headLineStyle,
                    ),
                    Text(
                      "New-York",
                      style: Styles.headLineStyle4
                          .copyWith(color: Colors.grey.shade600),
                    ),
                    const Gap(10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.workspace_premium,
                            color: Color(0xFF526799),
                          ),
                          Text(
                            "Premium status",
                            style: Styles.headLineStyle2.copyWith(
                              color: const Color(0xFF526799),
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Edit",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Divider(color: Colors.grey.shade300),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(10)),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3A8888),
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(18),
                    ),
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        maxRadius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.lightbulb_circle_sharp,
                          color: Color(0xFF526799),
                        ),
                      ),
                      const Gap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(10),
                          Text(
                            "You have got a new award",
                            style: Styles.headLineStyle
                                .copyWith(color: Colors.white, fontSize: 20),
                          ),
                          const Gap(10),
                          Text(
                            "You have 150 flights in the year",
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white70, fontSize: 15),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -25,
                  right: -50,
                  child: Container(
                    padding: EdgeInsets.all(
                      AppLayout.getHeight(30),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(
                        width: 18,
                        color: const Color(0xFF189999),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Gap(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Accumulated miles",
                  style: Styles.headLineStyle.copyWith(fontSize: 20),
                )
              ],
            ),
            const Gap(35),
            Center(
              child: Text(
                "192802",
                style: Styles.headLineStyle
                    .copyWith(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Miles accured",
                      style: Styles.headLineStyle3,
                    ),
                    const Spacer(),
                    Text(
                      "23 May 2021",
                      style: Styles.headLineStyle3,
                    ),
                  ],
                ),
                const Divider(),
                const Gap(10),
                Profile_Column(
                  title1: "23 042",
                  title2: "Miles",
                  title3: "Airline CO",
                  title4: "Received from",
                ),
                const Gap(15),
                const Divider(),
                Profile_Column(
                  title1: "24",
                  title2: "Miles",
                  title3: "McDonal's",
                  title4: "Received from",
                ),
                const Divider(),
                Profile_Column(
                  title1: "52 340",
                  title2: "Miles",
                  title3: "Exuma",
                  title4: "Received from",
                ),
              ],
            ),
            const Gap(10),
            Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  "How to get more miles",
                  style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor, fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
