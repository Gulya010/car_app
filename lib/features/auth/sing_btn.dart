import 'package:flutter/material.dart';

class SingBtn extends StatelessWidget {
  const SingBtn({super.key, required this.text, required this.onTap});

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      decoration: BoxDecoration(
        color: const Color(0xff2B4C59),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
