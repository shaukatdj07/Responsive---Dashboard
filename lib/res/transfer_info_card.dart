

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice/Config/responsive.dart';
import 'package:practice/Config/size_config.dart';
import 'package:practice/model/model.dart';
import 'package:practice/res/app_color.dart';

class TransferInfoCard extends StatelessWidget {
  final InfoCardModel infoCardModel;
  const TransferInfoCard({super.key, required this.infoCardModel});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      constraints: BoxConstraints(
        minWidth: Responsive.isDesktop(context)
        ? MediaQuery.of(context).size.width / 7
        : SizeConfig.screenWidth / 2 - 40,
      ),
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 20,
        right: Responsive.isMobile(context)? 20 : 40,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(infoCardModel.icon, width: 35),
          SizedBox(height: SizeConfig.blockSizeVertical * 2),
          Text(infoCardModel.label, style: TextStyle(
            fontSize: 15,
            height: 1.3,
            color: MyAppColor.secondry,
          ),
          ),
         SizedBox(height: SizeConfig.blockSizeVertical * 2),

         Text(
          infoCardModel.amount, 
          style: TextStyle(
            fontSize: 18,
            height: 1.3,
            color: Colors.black,
            fontWeight: FontWeight.w700
          ),
         ),
        ],
      ),
    );
  }
}