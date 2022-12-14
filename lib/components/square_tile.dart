import 'package:flutter/material.dart';

class SqureTile extends StatelessWidget {
  final String Img;
  const SqureTile({super.key, required this.Img});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        Img,
        height: 25,
      ),
    );
  }
}
