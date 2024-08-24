import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:videocallui/constants.dart';
import 'package:videocallui/screens/dialScreen/components/body.dart';
import 'package:videocallui/size_config.dart';

class DialScreen extends StatelessWidget {
  const DialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      backgroundColor: kBackgoundColor,
      body: Body(),
    );
  }
}
