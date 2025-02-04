import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

mixin AppNotice {
  void showError(String errorText) {
    Fluttertoast.showToast(
        msg: errorText,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 3,
        // ignore: deprecated_member_use
        backgroundColor: Colors.red.withOpacity(0.8),
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void showSuccess(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 3,
        // ignore: deprecated_member_use
        backgroundColor: Colors.green.withOpacity(0.8),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
