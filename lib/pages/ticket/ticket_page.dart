import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets/data/app_info_list.dart';
import 'package:booktickets/app_widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/common.dart';

class TicketPage extends StatelessWidget {
  TicketPage({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headlineStyle1,
            ),
            Gap(AppLayout.getHeight(20)),
            _TopNavTickets(
              onItemSelected: (index) {
                pageIndex.value = index;
              },
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(15),
              ),
              child: TicketView(
                ticket: ticketList[0],
                isColor: false,
                hasBottomRadius: false,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(15),
              ),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21))),
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              child: Column(
                children: [
                  DashesLine(division: 15, color: Colors.grey.shade500),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: "Flutter DB",
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start,
                        firstTextColor: Colors.grey.shade600,
                        secondTextolor: Colors.grey.shade500,
                      ),
                      ColumnLayout(
                        firstText: "5221-36745555",
                        secondText: 'passport',
                        alignment: CrossAxisAlignment.end,
                        firstTextColor: Colors.grey.shade600,
                        secondTextolor: Colors.grey.shade500,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  DashesLine(division: 15, color: Colors.grey.shade500),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: "6526-76311267",
                        secondText: 'Number of E-Ticket',
                        alignment: CrossAxisAlignment.start,
                        firstTextColor: Colors.grey.shade600,
                        secondTextolor: Colors.grey.shade500,
                      ),
                      ColumnLayout(
                        firstText: "B25G28",
                        secondText: 'Booking code',
                        alignment: CrossAxisAlignment.end,
                        firstTextColor: Colors.grey.shade600,
                        secondTextolor: Colors.grey.shade500,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  DashesLine(division: 15, color: Colors.grey.shade500),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/visa.png",
                                width: 40,
                              ),
                              Text(
                                " *** 2464",
                                style: Styles.headlineStyle3,
                              )
                            ],
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Payment method",
                            style: Styles.headlineStyle4,
                          )
                        ],
                      ),
                      ColumnLayout(
                        firstText: "\$249.99",
                        secondText: 'Price',
                        alignment: CrossAxisAlignment.end,
                        firstTextColor: Colors.grey.shade600,
                        secondTextolor: Colors.grey.shade500,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: "https://github.com/petprog",
                      drawText: false,
                      barcode: Barcode.code128(),
                      color: Styles.textColor,
                      width: double.infinity,
                      height: AppLayout.getHeight(70),
                    ),
                  ),
                  Gap(AppLayout.getHeight(20)),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(15)),
            Container(
              padding: EdgeInsets.only(
                left: AppLayout.getHeight(15),
              ),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
                hasBottomRadius: true,
              ),
            ),
          ],
        ),
        Positioned(
          left: AppLayout.getWidth(19),
          top: AppLayout.getHeight(AppLayout.getSize(context).height * 0.4),
          child: Container(
            padding: const EdgeInsets.all(3),
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
          right: AppLayout.getWidth(19),
          top: AppLayout.getHeight(AppLayout.getSize(context).height * 0.4),
          child: Container(
            padding: const EdgeInsets.all(3),
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
      ]),
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
        padding: const EdgeInsets.all(1.5),
        child: Row(
          children: [
            _NavigationBaritem(
              width: size.width * 0.44,
              index: 0,
              label: 'Upcoming',
              onTap: handleItemSelected,
              isSelected: (selectedIndex == 0),
            ),
            _NavigationBaritem(
              width: size.width * 0.44,
              index: 1,
              label: 'Previous',
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
