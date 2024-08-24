import 'package:flutter/material.dart';
import 'package:videocallui/size_config.dart';

class DialUserPic extends StatelessWidget {
  const DialUserPic({
    super.key,
    this.size = 192,
    required this.image,
  });

  final double size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30 / 192 * size),
      height: getProportionateScreenHeight(size),
      width: getProportionateScreenWidth(size),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(colors: [
            Colors.white.withOpacity(0.02),
            Colors.white.withOpacity(0.05),
          ], stops: [
            0.5,
            1
          ])),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
