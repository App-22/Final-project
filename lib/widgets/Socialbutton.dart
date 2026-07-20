import 'package:flutter/material.dart';
class SocialButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;

  const SocialButton({
    super.key,
    required this.icon,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: color),
      label: Text(text),
    );
  }
}