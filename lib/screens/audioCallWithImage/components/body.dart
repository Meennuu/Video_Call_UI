import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:videocallui/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/images/full_image.png",
          fit: BoxFit.cover,
        ),
        DecoratedBox(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.3))),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jemmy\nWilliams",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
                const VerticalSpacing(
                  of: 10,
                ),
                Text(
                  "Incoming call 00:01".toUpperCase(),
                  style: const TextStyle(color: Colors.white60),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: getProportionateScreenHeight(60),
                      width: getProportionateScreenWidth(60),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: SvgPicture.asset(
                            "assets/icons/Icon Mic.svg",
                            color: Colors.black,
                            width: getProportionateScreenWidth(32),
                            height: getProportionateScreenHeight(32),
                          ),
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(60),
                      width: getProportionateScreenWidth(60),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: SvgPicture.asset(
                            "assets/icons/call_end.svg",
                            color: Colors.white,
                            width: getProportionateScreenWidth(32),
                            height: getProportionateScreenHeight(32),
                          ),
                          onPressed: () {},
                          color: kRedColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(60),
                      width: getProportionateScreenWidth(60),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: SvgPicture.asset(
                            "assets/icons/Icon Volume.svg",
                            color: Colors.black,
                            width: getProportionateScreenWidth(32),
                            height: getProportionateScreenHeight(32),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
