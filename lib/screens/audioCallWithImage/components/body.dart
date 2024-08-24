import 'package:flutter/material.dart';
import 'package:videocallui/components/rounded_button.dart';
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
                    RoundedButton(
                      iconScr: "assets/icons/Icon Mic.svg",
                      press: () {},
                      color: Colors.white,
                    ),
                    RoundedButton(
                      iconScr: "assets/icons/call_end.svg",
                      press: () {},
                      color: kRedColor,
                    ),
                    RoundedButton(
                      iconScr: "assets/icons/Icon Volume.svg",
                      press: () {},
                      color: Colors.white,
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
