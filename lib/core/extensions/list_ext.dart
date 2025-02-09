import 'package:flutter/material.dart';

extension ListExt on List<int> {
  EdgeInsets get symmetricPadding => EdgeInsets.symmetric(
      vertical: first.toDouble(), horizontal: last.toDouble());
  BorderRadius get symmetButtom => BorderRadius.only(
      bottomLeft: Radius.circular(first.toDouble()),
      bottomRight: Radius.circular(last.toDouble()));
  BorderRadius get symmetTop => BorderRadius.only(
      topLeft: Radius.circular(first.toDouble()),
      topRight: Radius.circular(last.toDouble()));
}
