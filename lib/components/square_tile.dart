import 'package:flutter/material.dart';
import 'package:login_ui/Contents/colors.dart';

class SqureTile extends StatelessWidget {
  final String Img;
  const SqureTile({super.key, required this.Img});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: White),
        borderRadius: BorderRadius.circular(8.0),
        color: imagebgColor,
      ),
      child: Image.asset(
        Img,
        height: 25,
      ),
    );
  }
}
