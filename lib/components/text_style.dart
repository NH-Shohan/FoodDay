import 'package:flutter/material.dart';

class HeadingH1 extends StatelessWidget {
  final String? text;

  const HeadingH1({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
          fontSize: 32,
          height: 1.2,
          letterSpacing: 0.0,
          fontWeight: FontWeight.w700,
          color: Color(0xFF333333)),
    );
  }
}

class HeadingH3 extends StatelessWidget {
  final String? text;

  const HeadingH3({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class Body extends StatelessWidget {
  final String? text;
  final bool center;

  const Body({super.key, this.text, this.center = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xff888888),
      ),
      textAlign: center ? TextAlign.center : TextAlign.left,
    );
  }
}

class Small extends StatelessWidget {
  final String? text;
  final bool center;
  final TextStyle? textStyle;

  const Small({super.key, this.text, this.center = false, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.0,
        color: Color(0xff888888),
      ).copyWith(
        fontSize: textStyle?.fontSize,
        fontWeight: textStyle?.fontWeight,
        letterSpacing: textStyle?.letterSpacing,
        color: textStyle?.color,
        fontFamily: textStyle?.fontFamily,
        backgroundColor: textStyle?.backgroundColor,
        decoration: textStyle?.decoration ?? TextDecoration.none,
      ),
      textAlign: center ? TextAlign.center : TextAlign.left,
    );
  }
}
