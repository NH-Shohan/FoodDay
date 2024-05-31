import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final VoidCallback? callBack;

  const NextButton({super.key, this.callBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          color: const Color(0xFFE5E5E5),
          borderRadius: BorderRadius.circular(50)),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_forward_ios_rounded,
        ),
        focusColor: const Color(0xFFE5E5E5),
        onPressed: () {
          callBack!();
        },
      ),
    );
  }
}
