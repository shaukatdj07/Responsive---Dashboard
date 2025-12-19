import 'package:flutter/material.dart';
import 'package:practice/Config/responsive.dart';
import 'package:practice/Config/size_config.dart';
import 'package:practice/model/model.dart';
import 'package:practice/res/app_color.dart';

class ShowHistory extends StatefulWidget {
  const ShowHistory({super.key});

  @override
  State<ShowHistory> createState() => _ShowHistoryState();
}

class _ShowHistoryState extends State<ShowHistory> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      scrollDirection:
      Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context)
            ? double.infinity
            : SizeConfig.screenWidth,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
            transactionHistory.length,
                (index) {
              final transaction = transactionHistory[index];
              return TableRow(
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? Colors.white
                      : MyAppColor.backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 20,
                    ),
                    child: CircleAvatar(
                      radius: 17,
                      backgroundImage: NetworkImage(transaction.avatar),
                    ),
                  ),
                  Text(
                    transaction.label,
                    style: TextStyle(
                      letterSpacing: -1,
                      height: 1.3,
                      color: MyAppColor.secondry,
                    ),
                  ),
                  Text(
                    transaction.time,
                    style:  TextStyle(
                      letterSpacing: -1,
                      height: 1.3,
                      color: MyAppColor.secondry,
                    ),
                  ),
                  Text(
                    "${transaction.amount}.00",
                    style:  TextStyle(
                      letterSpacing: -1,
                      height: 1.3,
                      color: MyAppColor.secondry,
                    ),
                  ),
                  Text(
                    transaction.status,
                    style:  TextStyle(
                      letterSpacing: -1,
                      height: 1.3,
                      color: MyAppColor.secondry,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
