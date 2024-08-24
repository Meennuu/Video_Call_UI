import 'package:flutter/material.dart';
import 'package:videocallui/size_config.dart';

import 'components/body.dart';

class AudioCallWithImage extends StatelessWidget {
  const AudioCallWithImage({super.key});

  @override
  Widget build(BuildContext context) {
    //for responsive ui
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
