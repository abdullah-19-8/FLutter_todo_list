import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showMyToast({
  required String message,
  bool errorType = false,
  bool fromTop = false,
  bool shortToast = false,
}) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: message,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.black,
    textColor: errorType ? Colors.red : Colors.black,
    fontSize: 16.0,
  );
}
