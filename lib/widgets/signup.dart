import 'package:flutter/material.dart';

class SignupText extends StatelessWidget {
  const SignupText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("Don't have an account? "),
        Text(
          "Sign up",
          style: TextStyle(
            color: Color(0xffFF6B00),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}