import 'package:flutter/material.dart';

extension IntExt on int {
  SizedBox get verticalSpace => SizedBox(
        height: toDouble(),
      );
  SizedBox get horizontalSpace => SizedBox(
        width: toDouble(),
      );
  EdgeInsets get symmetricVertical =>
      EdgeInsets.symmetric(vertical: toDouble());
  EdgeInsets get symmetricHorizontal =>
      EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get paddingAll => EdgeInsets.all(toDouble());
  EdgeInsets get onlyRight => EdgeInsets.only(right: toDouble());
  EdgeInsets get onlyLeft => EdgeInsets.only(left: toDouble());
  EdgeInsets get onlyTop => EdgeInsets.only(top: toDouble());
  EdgeInsets get onlyBottom => EdgeInsets.only(bottom: toDouble());
  BorderRadius get borderRadius => BorderRadius.circular(toDouble());
}
