import 'package:booktickets/app_widgets/app_widgets.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/common.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/img1.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headlineStyle1),
                  Gap(AppLayout.getHeight(2)),
                  Text("New-York",
                      style: Styles.headlineStyle4.copyWith(fontSize: 14)),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(3),
                        horizontal: AppLayout.getWidth(4)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(100),
                      ),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(AppLayout.getWidth(5)),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      print("You are tapped");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color(0xFF264CD2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(25),
                  vertical: AppLayout.getHeight(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getWidth(8)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'ve got a new award",
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text(
            "Accumulated miles",
            style: Styles.headlineStyle2,
          ),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(15),
              vertical: AppLayout.getHeight(20),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(18),
              ),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 2,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "11 June 2022",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(4)),
                Divider(color: Colors.grey.shade300),
                Gap(AppLayout.getHeight(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: "23 042",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      firstTextColor: Colors.grey.shade600,
                      secondTextolor: Colors.grey.shade500,
                    ),
                    ColumnLayout(
                      firstText: "Airline CO",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.start,
                      firstTextColor: Colors.grey.shade600,
                      secondTextolor: Colors.grey.shade500,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                DashesLine(division: 12, color: Colors.grey.shade400),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      firstTextColor: Colors.grey.shade600,
                      secondTextolor: Colors.grey.shade500,
                    ),
                    ColumnLayout(
                      firstText: "McDonal\'s",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.start,
                      firstTextColor: Colors.grey.shade600,
                      secondTextolor: Colors.grey.shade500,
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(12)),
                DashesLine(division: 12, color: Colors.grey.shade400),
                Gap(AppLayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnLayout(
                      firstText: "54.243",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      firstTextColor: Colors.grey.shade600,
                      secondTextolor: Colors.grey.shade500,
                    ),
                    ColumnLayout(
                      firstText: "Exuma",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.start,
                      firstTextColor: Colors.grey.shade600,
                      secondTextolor: Colors.grey.shade500,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: () {
              print("You are tapped");
            },
            child: Center(
              child: Text(
                "How to get more miles",
                style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
