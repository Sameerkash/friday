import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

Widget showSnack(BuildContext context, String message) {
  return Flushbar(
    message: message,
    flushbarStyle: FlushbarStyle.FLOATING,
    icon: Icon(
      Icons.info_outline,
      size: 28.0,
      color: Colors.red,
    ),
    duration: Duration(seconds: 3),
    leftBarIndicatorColor: Colors.red,
  )..show(context);
}




void showBlockingDialog(BuildContext context) {
  showDialog<dynamic>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return const Center(child: CircularProgressIndicator());
    },
  );
}