import 'package:car_app/core/extensions/int_ext.dart';
import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

class AuthBtn extends StatelessWidget {
  const AuthBtn({super.key, required this.btnText, required this.image});

  final String btnText;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 18.symmetricHorizontal,
      decoration: BoxDecoration(
          borderRadius: 10.borderRadius,
          border: Border.all(color: Colors.black, width: 2)),
      child: ListTile(
        leading: Image.asset(
          image,
          height: 30,
        ),
        title: Text(
          btnText,
          style: AppTextstyles.regular,
        ),
      ),
    );
  }
}
