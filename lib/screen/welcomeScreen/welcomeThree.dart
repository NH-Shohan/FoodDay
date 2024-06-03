import 'package:flutter/material.dart';
import 'package:foodday/components/next_button.dart';
import 'package:foodday/components/text_style.dart';
import 'package:foodday/screen/welcomeScreen/welcomeFour.dart';

class WelcomeThree extends StatelessWidget {
  const WelcomeThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Center(
            child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          const Image(
            image: AssetImage('assets/images/logo.png'),
            width: 180,
          ),
          const SizedBox(
            height: 80,
          ),
          Image(
            image: const AssetImage('assets/images/welcomeThree.png'),
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 32,
          ),
          const HeadingH3(text: "People Can't Eat"),
          const SizedBox(
            height: 16,
          ),
          const Body(
            text:
                "In the depths of destitution, some are forced to scavenge for sustenance in the refuse of society's waste bins.",
            center: true,
          ),
          const SizedBox(
            height: 64,
          ),
          NextButton(
            callBack: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeFour()),
              );
            },
          ),
        ])),
      ),
    ));
  }
}
