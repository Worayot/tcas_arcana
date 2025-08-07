import 'package:flutter/material.dart';

Widget buildButtonWithBorder({
  required String text,
  required Color backgroundColor,
  required Color foregroundColor,
  required Color borderColor,
  Color? textColor,
  VoidCallback? onPressed,
  double? height,
  double? width,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: borderColor, // ✅ Border color here
            width: 2.0, // Border width
          ),
        ),
        textStyle: TextStyle(fontSize: 18),
        elevation: 2,
      ),
      child: Text(text, style: TextStyle(color: textColor)),
    ),
  );
}
