import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/App_Styles.dart';
import 'package:ticket_app/utils/app_layout.dart';

class HotelScreen extends StatelessWidget {
  final String image, title, place;

  final int price;
  HotelScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.place,
      required this.price});

  @override
  Widget build(BuildContext context) {
    // final double size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
      width: MediaQuery.of(context).size.width * 0.5,
      height: AppLayout.getHeight(310),
      margin: const EdgeInsets.only(top: 5, bottom: 10, right: 10),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            // offset: Offset(10, -10),
            blurRadius: 2,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          const Gap(10),
          Text(
            title,
            style: Styles.headLineStyle2.copyWith(color: Styles.hotelTextColor),
          ),
          const Gap(5),
          Text(
            place,
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            "\$$price/Night",
            style: Styles.headLineStyle2.copyWith(color: Styles.hotelTextColor),
          ),
        ],
      ),
    );
  }
}
