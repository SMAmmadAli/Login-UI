import 'package:flutter/material.dart';
import 'package:login_ui/Contents/colors.dart';
import 'package:login_ui/pages/home_page.dart';
import 'get_Value_function.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          getValueofField();
        });
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: black,
        ),
        child: const Text(
          'Sign in',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16.0),
        ),
      ),
    );
  }
}
