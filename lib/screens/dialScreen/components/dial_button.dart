import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:videocallui/size_config.dart';

class DialButton extends StatelessWidget {
  const DialButton({
    super.key,
    required this.iconSrc,
    required this.text,
    required this.press,
  });

  final String iconSrc, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: SvgPicture.asset(
            iconSrc,
            color: Colors.white,
            width: getProportionateScreenWidth(20),
            height: getProportionateScreenHeight(36),
          ),
          onPressed: press,
        ),
        const VerticalSpacing(
          of: 5,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 13),
        )
      ],
    );
  }
}
