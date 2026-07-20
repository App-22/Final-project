import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool obscure;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.icon,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),

        suffixIcon:
            obscure
                ? const Icon(Icons.visibility_outlined)
                : null,

        hintText: hint,

        filled: true,
        fillColor: Colors.white,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }
}