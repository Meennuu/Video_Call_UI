import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:videocallui/components/rounded_button.dart';
import 'package:videocallui/constants.dart';
import 'package:videocallui/screens/groupCall/components/body.dart';
import 'package:videocallui/size_config.dart';

class GroupCallScreen extends StatelessWidget {
  const GroupCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/Icon Back.svg")),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Icon User.svg",
              height: 24,
            ))
      ],
    );
  }

  Container buildBottomNavBar() {
    return Container(
      color: kBackgoundColor,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 53, 26, 44),
        child: Row(
          children: [
            RoundedButton(
                size: 48,
                iconScr: "assets/icons/Icon Close.svg",
                iconColor: Colors.white,
                press: () {},
                color: kRedColor),
            const Spacer(
              flex: 3,
            ),
            RoundedButton(
                size: 48,
                iconScr: "assets/icons/Icon Volume.svg",
                iconColor: Colors.white,
                press: () {},
                color: const Color(0xFF2C384D)),
            const Spacer(),
            RoundedButton(
                size: 48,
                iconScr: "assets/icons/Icon Mic.svg",
                iconColor: Colors.white,
                press: () {},
                color: const Color(0xFF2C384D)),
            const Spacer(),
            RoundedButton(
                size: 48,
                iconScr: "assets/icons/Icon Video.svg",
                iconColor: Colors.white,
                press: () {},
                color: const Color(0xFF2C384D)),
            const Spacer(),
            RoundedButton(
                size: 48,
                iconScr: "assets/icons/Icon Repeat.svg",
                iconColor: Colors.white,
                press: () {},
                color: const Color(0xFF2C384D)),
          ],
        ),
      )),
    );
  }
}
