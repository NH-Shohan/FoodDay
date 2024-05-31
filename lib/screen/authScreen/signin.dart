import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Image(
          image: AssetImage('assets/images/logo.png'),
          width: 220,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 32),
            RichText(
              text: const TextSpan(
                text: "Sign In ",
                style: TextStyle(
                  fontSize: 32,
                  height: 1.2,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF333333),
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Food', style: TextStyle(color: Color(0xFF4DB24D))),
                  TextSpan(
                      text: 'Day', style: TextStyle(color: Color(0xFFFFA500))),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ])),
    );
  }
}
