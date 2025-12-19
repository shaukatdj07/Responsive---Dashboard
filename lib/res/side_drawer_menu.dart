import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/model/model.dart';
import 'package:practice/res/app_color.dart';

class SideDrawerMenu extends StatefulWidget {
  const SideDrawerMenu({super.key});

  @override
  State<SideDrawerMenu> createState() => _SideDrawerMenuState();
}

class _SideDrawerMenuState extends State<SideDrawerMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        // height: SizeConfig.screenHeight,
        width: double.infinity,
        color: MyAppColor.secondryBg,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                width: double.infinity,
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 40,
                  width: 25,
                  child: SvgPicture.asset("three_color.svg"),
                ),
              ),
              ...List.generate(menuIcons.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.symmetric(vertical: 20),
                          child: SvgPicture.asset(
                            menuIcons[index],
                            color: selectedIndex == index
                                ? Colors.black
                                : MyAppColor.iconGrey,
                            fit: BoxFit.cover,
                            height: 30,
                            width: 30,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 35,
                          width: 3,
                          decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? Colors.black
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
