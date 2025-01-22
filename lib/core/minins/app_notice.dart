import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

mixin AppNotice {
  void showError(String errorText) {
    Fluttertoast.showToast(
        msg: errorText,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void showSuccess(String successText) {
    Fluttertoast.showToast(
        msg: successText,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
