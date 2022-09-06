import 'package:booktickets/app_widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/common.dart';
import 'widgets/button_text.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Text(
            "What are\nyou looking for?",
            style: Styles.headlineStyle1.copyWith(
              fontSize: AppLayout.getWidth(35),
            ),
          ),
          Gap(
            AppLayout.getHeight(20),
          ),
          _TopNavTickets(
            onItemSelected: (index) {
              pageIndex.value = index;
            },
          ),
          Gap(AppLayout.getHeight(25)),
          ValueListenableBuilder(
            valueListenable: pageIndex,
            builder: (BuildContext context, int value, _) {
              return value == 0
                  ? const _AirlineTicketSearchView()
                  : const _HotelSearchView();
            },
          ),
          Gap(AppLayout.getHeight(50)),
          DoubleTextWidget(
            bigText: "Upcoming Flights",
            smallText: "View all",
            onTap: () {},
          ),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(12),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(12),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                      ),
                    ),
                    Gap(
                      AppLayout.getHeight(12),
                    ),
                    Text(
                      "20% discount on the early booking of this flight, Don't miss out this chance",
                      style: Styles.headlineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(180),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getWidth(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(
                              AppLayout.getHeight(10),
                            ),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(
                            AppLayout.getHeight(30),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 18,
                              color: const Color(0xFF189999),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(18),
                      ),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headlineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AirlineTicketSearchView extends StatelessWidget {
  const _AirlineTicketSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _IconText(
          text: 'Departure',
          icon: Icons.flight_takeoff_rounded,
        ),
        Gap(
          AppLayout.getHeight(20),
        ),
        const _IconText(
          text: 'Arrival',
          icon: Icons.flight_land_rounded,
        ),
        Gap(
          AppLayout.getHeight(25),
        ),
        const ButtonText(text: 'Find tickets')
      ],
    );
  }
}

class _HotelSearchView extends StatelessWidget {
  const _HotelSearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _IconText(
          text: 'Location',
          icon: Icons.location_city,
        ),
        Gap(
          AppLayout.getHeight(20),
        ),
        const _IconText(text: 'Amount', icon: Icons.price_change_outlined),
        Gap(
          AppLayout.getHeight(25),
        ),
        const ButtonText(
          text: 'Find hotels',
        ),
      ],
    );
  }
}

class _IconText extends StatelessWidget {
  const _IconText({Key? key, required this.text, required this.icon})
      : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(12),
          vertical: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppLayout.getWidth(10),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          Gap(
            AppLayout.getWidth(10),
          ),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}

class _TopNavTickets extends StatefulWidget {
  const _TopNavTickets({Key? key, required this.onItemSelected})
      : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<_TopNavTickets> createState() => _TopNavTicketsState();
}

class _TopNavTicketsState extends State<_TopNavTickets> {
  var selectedIndex = 0;
  void handleItemSelected(int index) {
    setState(
      () {
        selectedIndex = index;
      },
    );
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        child: Row(
          children: [
            _NavigationBaritem(
              width: size.width * 0.44,
              index: 0,
              label: 'Airline tickets',
              onTap: handleItemSelected,
              isSelected: (selectedIndex == 0),
            ),
            _NavigationBaritem(
              width: size.width * 0.44,
              index: 1,
              label: 'Hotels',
              onTap: handleItemSelected,
              isSelected: (selectedIndex == 1),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeight(50),
          ),
          color: const Color(0xFFF4F6FD),
        ),
      ),
    );
  }
}

class _NavigationBaritem extends StatelessWidget {
  const _NavigationBaritem(
      {Key? key,
      required this.onTap,
      required this.label,
      required this.index,
      required this.isSelected,
      required this.width})
      : super(key: key);

  final ValueChanged<int> onTap;

  final String label;
  final int index;
  final bool isSelected;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
        width: width,
        decoration: BoxDecoration(
          borderRadius: index == 1
              ? BorderRadius.horizontal(
                  right: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                )
              : BorderRadius.horizontal(
                  left: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
          color: isSelected ? Colors.white : Colors.transparent,
        ),
        child: Center(child: Text(label)),
      ),
    );
  }
}
