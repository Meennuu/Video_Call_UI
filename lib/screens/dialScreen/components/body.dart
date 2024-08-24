import 'package:flutter/material.dart';
import 'package:videocallui/components/dial_user_pic.dart';
import 'package:videocallui/components/rounded_button.dart';
import 'package:videocallui/constants.dart';
import 'package:videocallui/screens/dialScreen/components/dial_button.dart';
import 'package:videocallui/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Anna William",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            ),
            const Text(
              "Calling...",
              style: TextStyle(color: Colors.white60),
            ),
            const VerticalSpacing(),
            const DialUserPic(
              image: "assets/images/calling_face.png",
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DialButton(
                    iconSrc: "assets/icons/Icon Mic.svg",
                    text: "Audio",
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: "assets/icons/Icon Volume.svg",
                    text: "Microphone",
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: "assets/icons/Icon Video.svg",
                    text: "Video",
                    press: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DialButton(
                    iconSrc: "assets/icons/Icon Message.svg",
                    text: "Message",
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: "assets/icons/Icon User.svg",
                    text: "Add Contact",
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: "assets/icons/Icon Voicemail.svg",
                    text: "Voice mail",
                    press: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            RoundedButton(
              iconScr: "assets/icons/call_end.svg",
              press: () {},
              color: kRedColor,
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
