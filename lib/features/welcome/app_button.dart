import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, required this.onTap});

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
      height: 60,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 9, 5, 90),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 26),
      ),
    );
  }
}
