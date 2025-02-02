import 'package:car_app/core/theme/app_textstyles.dart';
import 'package:flutter/material.dart';

class AuthBtn extends StatelessWidget {
  const AuthBtn(
      {super.key,
      required this.btnText,
      required this.onTap,
      required this.image});

  final String btnText;
  final String image;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
