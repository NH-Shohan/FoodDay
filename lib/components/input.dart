import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String? text;
  final TextEditingController? controller;
  final TextInputType? inputType;

  const Input({super.key, this.text, this.controller, this.inputType});

  @override
  Widget build(BuildContext context) {
    int maxLength = inputType == TextInputType.phone ? 11 : 0;

    return Expanded(
      child: SizedBox(
        height: 42,
        child: TextField(
          controller: controller,
          keyboardType: inputType,
          maxLength: maxLength,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 12.0,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8.0),
            ),
            hintText: text,
            counterText: "",
            hintStyle: const TextStyle(
              color: Color(0xFFCCCCCC),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
