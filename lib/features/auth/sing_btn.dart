import 'package:car_app/core/extensions/int_ext.dart';
import 'package:flutter/material.dart';

class SingBtn extends StatelessWidget {
  const SingBtn({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 26.symmetricHorizontal,
      decoration: BoxDecoration(
        color: const Color(0xff2B4C59),
        borderRadius: 10.borderRadius,
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
