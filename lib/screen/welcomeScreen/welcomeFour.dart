import 'package:flutter/material.dart';
import 'package:foodday/components/next_button.dart';
import 'package:foodday/components/text_style.dart';
import 'package:foodday/screen/welcomeScreen/welcomeFive.dart';

class WelcomeFour extends StatelessWidget {
  const WelcomeFour({super.key});

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
            width: 220,
          ),
          const SizedBox(
            height: 80,
          ),
          Image(
            image: const AssetImage('assets/images/welcomeFour.png'),
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 32,
          ),
          const HeadingH3(text: "Help Them To Eat"),
          const SizedBox(
            height: 16,
          ),
          const Body(
            text:
                "Compassionate individuals or organizations step in to provide food aid, offering a lifeline to those struggling amidst societal neglect and indifference.",
            center: true,
          ),
          const SizedBox(
            height: 64,
          ),
          NextButton(
            callBack: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeFive()),
              );
            },
          ),
        ])),
      ),
    ));
  }
}
