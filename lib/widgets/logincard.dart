import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login to your account",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 30),

          // Email Field

          // Password Field

          // Forgot Password

          // Login Button

          // Social Buttons
        ],
      ),
    );
  }
}