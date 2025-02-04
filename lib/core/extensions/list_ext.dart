import 'package:flutter/material.dart';

extension ListExt on List<int> {
  EdgeInsets get symmetricPadding => EdgeInsets.symmetric(
      vertical: first.toDouble(), horizontal: last.toDouble());
}
