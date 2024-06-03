import 'package:flutter/material.dart';
import 'package:foodday/components/next_button.dart';
import 'package:foodday/components/text_style.dart';
import 'package:foodday/screen/welcomeScreen/welcomeTwo.dart';

class WelcomeOne extends StatelessWidget {
  const WelcomeOne({super.key});

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
            image: const AssetImage('assets/images/welcomeOne.png'),
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 32,
          ),
          const HeadingH3(text: "Wasting Food?"),
          const SizedBox(
            height: 16,
          ),
          const Body(
            text:
                "Overflowing tables, untouched abundance, while hunger's plea falls on deaf ears, a stark paradox of plenty amidst need.",
            center: true,
          ),
          const SizedBox(
            height: 64,
          ),
          NextButton(
            callBack: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WelcomeTwo()),
              );
            },
          ),
        ])),
      ),
    ));
  }
}
