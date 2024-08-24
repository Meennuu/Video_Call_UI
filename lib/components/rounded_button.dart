import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:videocallui/size_config.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.iconScr,
    required this.press,
    required this.color,
  });

  final String iconScr;
  final Color color;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(60),
      width: getProportionateScreenWidth(60),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: SvgPicture.asset(
            iconScr,
            color: Colors.white,
            width: getProportionateScreenWidth(32),
            height: getProportionateScreenHeight(32),
          ),
          onPressed: press,
          color: color,
        ),
      ),
    );
  }
}
