import 'package:flutter/material.dart';
import 'package:login_ui/Contents/colors.dart';
import 'package:login_ui/components/my_button.dart';
import 'package:login_ui/components/my_textfield.dart';
import 'package:login_ui/components/square_tile.dart';

List mylist = [];

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Icon(
                Icons.lock,
                size: 100,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Welcome back you\'ve been missed!',
            style: TextStyle(color: shadegreydark, fontSize: 16.0),
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
            hindText: "Username",
            ObscureText: false,
            PrefixIcon: Icon(Icons.person),
            SuffixIcon: null,
          ),
          const SizedBox(height: 10),
          MyTextField(
            hindText: "Password",
            ObscureText: true,
            PrefixIcon: Icon(Icons.lock),
            SuffixIcon: Icon(Icons.remove_red_eye),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forget Password",
                  style: TextStyle(color: shadegreydark),
                )
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          const MyButton(),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    "Or continue with",
                    style: TextStyle(color: shadegreydark),
                  ),
                ),
                const Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SqureTile(Img: '../assets/apple.png'),
              SizedBox(width: 10.0),
              SqureTile(Img: '../assets/google.png'),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member?',
                style: TextStyle(color: shadegreydark),
              ),
              Text(
                'Register now',
                style: TextStyle(color: blue, fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
