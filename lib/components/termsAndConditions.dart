import 'package:flutter/material.dart';
import 'package:foodday/components/text_style.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: Text(
                  'Terms & Conditions content goes here.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            );
          },
        );
      },
      child: const Small(
        text: "Terms & Conditions",
        textStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0xff333333),
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
