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
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: ListView(
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
          Container(
            padding: EdgeInsets.only(
              left: AppLayout.getHeight(15),
            ),
            child: TicketView(ticket: ticketList[0]),
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
