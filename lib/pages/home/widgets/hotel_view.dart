import 'package:booktickets/common/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../common/app_styles.dart';

class HotelView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      margin: const EdgeInsets.only(right: 17, top: 5, bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Styles.primaryColor.withOpacity(0.7),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor.withOpacity(0.85),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel["image"]}"),
              ),
            ),
          ),
          const Gap(15),
          Text(
            hotel["place"],
            style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            hotel["destination"],
            style: Styles.headlineStyle3.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(8),
          Text(
            "\$${hotel["price"]}/night",
            style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor),
          )
        ],
      ),
    );
  }
}
