import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback? callBack;
  final String? text;

  const Button({super.key, this.callBack, this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 42,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(const Color(0xFF4DB24D)),
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        ),
        onPressed: () {
          callBack!();
        },
        child: Text(
          text!,
          style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 16),
        ),
      ),
    );
  }
}
