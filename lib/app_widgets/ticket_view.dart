import 'package:booktickets/app_widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:booktickets/common/common.dart';
import 'dart:math';

import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isColor;
  final bool hasBottomRadius;
  const TicketView(
      {Key? key,
      required this.ticket,
      this.isColor = true,
      this.hasBottomRadius = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      // height: AppLayout.getHeight(169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor ? Styles.blueColor : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket["from"]["code"],
                        style: Styles.headlineStyle3.copyWith(
                            color:
                                isColor ? Colors.white : Colors.grey.shade600),
                      ),
                      const Spacer(),
                      ThickContainer(
                        color: isColor ? Colors.white : Colors.grey.shade500,
                      ),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                              height: AppLayout.getHeight(24),
                              child: DashesLine(
                                  division: 6,
                                  color: isColor
                                      ? Colors.white
                                      : Colors.grey.shade500)),
                          Center(
                            child: Transform.rotate(
                              angle: pi / 2,
                              child: Icon(Icons.local_airport_rounded,
                                  color: isColor
                                      ? Colors.white
                                      : Colors.grey.shade500),
                            ),
                          ),
                        ]),
                      ),
                      ThickContainer(
                          color: isColor ? Colors.white : Colors.grey.shade500),
                      const Spacer(),
                      Text(
                        ticket["to"]["code"],
                        style: Styles.headlineStyle3.copyWith(
                            color:
                                isColor ? Colors.white : Colors.grey.shade600),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket["from"]["name"],
                          textAlign: TextAlign.start,
                          style: Styles.headlineStyle4.copyWith(
                              color: isColor
                                  ? Colors.white
                                  : Colors.grey.shade500),
                        ),
                      ),
                      Text(
                        ticket["flying_time"],
                        style: Styles.headlineStyle4.copyWith(
                          color: isColor ? Colors.white : Colors.grey.shade500,
                        ),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: Styles.headlineStyle4.copyWith(
                              color: isColor
                                  ? Colors.white
                                  : Colors.grey.shade500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor ? Colors.white : Colors.grey.shade500,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                            AppLayout.getHeight(10),
                          ),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: DashesLine(
                        division: 15,
                        color: isColor ? Colors.white : Colors.grey.shade600),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor ? Colors.white : Colors.grey.shade500,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            AppLayout.getHeight(10),
                          ),
                          bottomLeft: Radius.circular(
                            AppLayout.getHeight(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor ? Styles.orangeColor : Colors.white,
                borderRadius: hasBottomRadius
                    ? BorderRadius.only(
                        bottomLeft: Radius.circular(
                          AppLayout.getHeight(21),
                        ),
                        bottomRight: Radius.circular(
                          AppLayout.getHeight(21),
                        ))
                    : null,
              ),
              padding: EdgeInsets.only(
                top: AppLayout.getHeight(10),
                left: AppLayout.getHeight(16),
                right: AppLayout.getHeight(16),
                bottom: AppLayout.getHeight(16),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayout(
                        firstText: ticket["date"],
                        secondText: 'Date',
                        alignment: CrossAxisAlignment.start,
                        firstTextColor:
                            isColor ? Colors.white : Colors.grey.shade600,
                        secondTextolor:
                            isColor ? Colors.white : Colors.grey.shade500,
                      ),
                      ColumnLayout(
                        firstText: ticket["departure_time"],
                        secondText: 'Number',
                        alignment: CrossAxisAlignment.center,
                        firstTextColor:
                            isColor ? Colors.white : Colors.grey.shade600,
                        secondTextolor:
                            isColor ? Colors.white : Colors.grey.shade500,
                      ),
                      ColumnLayout(
                        firstText: "${ticket["number"]}",
                        secondText: 'Number',
                        alignment: CrossAxisAlignment.end,
                        firstTextColor:
                            isColor ? Colors.white : Colors.grey.shade600,
                        secondTextolor:
                            isColor ? Colors.white : Colors.grey.shade500,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
