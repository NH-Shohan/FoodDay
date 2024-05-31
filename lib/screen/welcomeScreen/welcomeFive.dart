import 'package:flutter/material.dart';
import 'package:foodday/components/buttons.dart';
import 'package:foodday/components/text_style.dart';
import 'package:foodday/screen/authScreen/accountType.dart';

class WelcomeFive extends StatelessWidget {
  const WelcomeFive({super.key});

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
            image: const AssetImage('assets/images/welcomeFive.png'),
            width: MediaQuery.of(context).size.width,
          ),
          const SizedBox(
            height: 32,
          ),
          const HeadingH3(text: "Welcom to FoodDay"),
          const SizedBox(
            height: 16,
          ),
          const Body(
            text:
                "Rescue, share, and nourish with us. Find surplus meals from local restaurants and help combat food waste. Let's make a difference together.",
            center: true,
          ),
          const SizedBox(
            height: 30,
          ),
          RichText(
            text: const TextSpan(
              text: "Let's make every day a ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff888888),
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'FoodDay',
                    style: TextStyle(color: Color(0xFF333333))),
                TextSpan(text: '!'),
              ],
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          Button(
            callBack: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccountType()),
              );
            },
            text: "Let's Make Difference",
          )
        ])),
      ),
    ));
  }
}
