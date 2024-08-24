import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:videocallui/size_config.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.iconScr,
    required this.press,
    required this.color,
    required this.iconColor,
    this.size = 64,
  });

  final double size;
  final String iconScr;
  final Color color, iconColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(size),
      width: getProportionateScreenWidth(size),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          icon: SvgPicture.asset(
            iconScr,
            color: iconColor,
            width: getProportionateScreenWidth(32),
            height: getProportionateScreenHeight(32),
          ),
          onPressed: press,
        ),
      ),
    );
  }
}
