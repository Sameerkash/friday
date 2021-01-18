import 'package:flutter/material.dart';

InputDecoration inputFormat(BuildContext context, {String label}) {
  return InputDecoration(
      errorStyle: TextStyle(color: Colors.white),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      // filled: true,
      fillColor: Colors.white,
      labelText: "$label",
      labelStyle: Theme.of(context).textTheme.caption);
}

InputDecoration inputFormatTwo(BuildContext context,
    {String label, Widget icon}) {
  return InputDecoration(
      errorStyle: TextStyle(color: Colors.white),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      // filled: true,

      icon: icon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      fillColor: Colors.white,
      labelText: "$label",
      labelStyle:
          Theme.of(context).textTheme.caption.copyWith(color: Colors.grey));
}

InputDecoration inputFormatThree(BuildContext context, {String label}) {
  return InputDecoration(
      errorStyle: TextStyle(color: Colors.black),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.black)),
      fillColor: Colors.white,
      labelText: "$label",
      labelStyle:
          Theme.of(context).textTheme.caption.copyWith(color: Colors.grey));
}
