import 'package:flutter/material.dart';
import 'package:practice/Config/responsive.dart';
import 'package:practice/Config/size_config.dart';
import 'package:practice/model/model.dart';
import 'package:practice/res/app_color.dart';
import 'package:practice/res/bar_chat_represntation.dart';
import 'package:practice/res/header_parts.dart';
import 'package:practice/res/side_drawer_menu.dart';
import 'package:practice/res/transfer_info_card.dart';
import '../res/header_action_item.dart';
import '../res/payment_detail_info.dart';
import '../res/show_history.dart';

class MyDashboard extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  MyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: MyAppColor.backgroundColor,
      key: drawerKey,
      drawer: const SizedBox(width: 100, child: SideDrawerMenu()),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu, color: Colors.black),
        ),
        actions: const [
          HeaderActionItems(),
        ],
      )
          : const PreferredSize(
        preferredSize: Size.zero,
        child: SizedBox(),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 1,
                child: SideDrawerMenu(),
              ),
            Expanded(
              flex: 10,
              child: SafeArea(
                child: SingleChildScrollView(
                  padding:
                  const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // for dashboard text, search bar
                      const HeaderParts(),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 4,
                      ),
                      // for transfor info
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          // Dynamically map over infoCardData
                          children: infoCarModel.map((info) {
                            return TransferInfoCard(infoCardModel: info);
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 4,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Balance",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: MyAppColor.secondry,
                                  height: 1.3,
                                ),
                              ),
                              Text(
                                '\$2000',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: MyAppColor.primary,
                                  fontWeight: FontWeight.w800,
                                  height: 1.3,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Past 30 DAYS',
                            style: TextStyle(
                              fontSize: 16,
                              color: MyAppColor.secondry,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 3,
                      ),
                       SizedBox(
                        height: 180,
                        child: BarChatRepresentation(),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 5,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'History',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: MyAppColor.primary,
                              height: 1.3,
                            ),
                          ),
                          Text(
                            'Transaction of last 6 months',
                            style: TextStyle(
                              fontSize: 16,
                              color: MyAppColor.secondry,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical * 3,
                      ),
                      const ShowHistory(),
                      if (!Responsive.isDesktop(context))
                        const PaymentDetailInfo()
                    ],
                  ),
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 4,
                child: SafeArea(
                  child: Container(
                    width: double.infinity,
                    height: SizeConfig.screenHeight,
                    decoration:
                    const BoxDecoration(color: MyAppColor.secondryBg),
                    child: const SingleChildScrollView(
                      padding:
                      EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                      child: Column(
                        children: [HeaderActionItems(), PaymentDetailInfo()],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
