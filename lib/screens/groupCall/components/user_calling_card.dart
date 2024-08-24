import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:videocallui/components/dial_user_pic.dart';
import 'package:videocallui/constants.dart';
import 'package:videocallui/size_config.dart';

class UserCallingCard extends StatelessWidget {
  const UserCallingCard({
    super.key,
    required this.name,
    required this.image,
  });

  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgoundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DialUserPic(size: 112, image: image),
          const VerticalSpacing(
            of: 10,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
          const VerticalSpacing(
            of: 5,
          ),
          const Text(
            "Calling...",
            style: TextStyle(color: Colors.white60),
          )
        ],
      ),
    );
  }
}
