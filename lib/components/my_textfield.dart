import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hindText;
  final Icon? SuffixIcon;
  final Icon PrefixIcon;
  final bool ObscureText;
  const MyTextField(
      {super.key,
      this.controller,
      required this.hindText,
      required this.ObscureText,
      required this.SuffixIcon,
      required this.PrefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        obscureText: ObscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
            )),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hindText,
            suffixIcon: SuffixIcon,
            prefixIcon: PrefixIcon,
            prefixIconColor: Colors.white),
      ),
    );
  }
}
