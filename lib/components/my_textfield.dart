import 'package:flutter/material.dart';
import 'package:login_ui/Contents/colors.dart';
import 'package:login_ui/components/get_Value_function.dart';

class MyTextField extends StatelessWidget {
  final String hindText;
  final Icon? SuffixIcon;
  final Icon PrefixIcon;
  final bool ObscureText;
  MyTextField(
      {super.key,
      required this.hindText,
      required this.ObscureText,
      required this.SuffixIcon,
      required this.PrefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: ObscureText ? controllerUserPassword : controllerUserDetail,
        obscureText: ObscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
          )),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: shadegrey),
          ),
          fillColor: shadegreylight,
          filled: true,
          hintText: hindText,
          suffixIcon: SuffixIcon,
          prefixIcon: PrefixIcon,
        ),
      ),
    );
  }
}
