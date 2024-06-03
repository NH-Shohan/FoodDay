import 'package:flutter/material.dart';
import 'package:foodday/components/next_button.dart';
import 'package:foodday/components/text_style.dart';
import 'package:foodday/screen/welcomeScreen/welcomeThree.dart';

class WelcomeTwo extends StatelessWidget {
  const WelcomeTwo({super.key});

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
            image: const AssetImage('assets/images/welcomeTwo.png'),
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 32,
          ),
          const HeadingH3(text: "Poor People Are Dying"),
          const SizedBox(
            height: 16,
          ),
          const Body(
            text:
                "Poverty claims lives silently, as lack of access to basic necessities like food becomes a fatal reality for many.",
            center: true,
          ),
          const SizedBox(
            height: 64,
          ),
          NextButton(
            callBack: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeThree()),
              );
            },
          ),
        ])),
      ),
    ));
  }
}
