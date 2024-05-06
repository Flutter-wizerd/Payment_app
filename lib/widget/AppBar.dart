import 'package:flutter/material.dart';

AppBar newMethod(BuildContext context, {
  String? title, 
  String? centerTitle, 
  double? titleSize, 
  Color? titleColor, 
  Color? iconColor, 
  Color? centerTitleColor,
  List<Widget>? actions,
  Color? backgroundColor, // Add this parameter
}) {
  return AppBar(
    backgroundColor: backgroundColor ?? Colors.white, // Set background color
    elevation: 0,
    leading: IconButton(
      padding: const EdgeInsets.only(left: 20),
      icon: Icon(Icons.arrow_back_ios, color: iconColor ?? Colors.deepPurple, size: 20),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (title != null) 
          Text(
            title,
            style: TextStyle(
              color: titleColor ?? Colors.deepPurple,
              fontSize: titleSize ?? 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        const SizedBox(width: 30), 
        if (centerTitle != null)
          Text(
            centerTitle,
            style: TextStyle(
              color: centerTitleColor ?? Colors.black,
              fontSize: titleSize ?? 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        const Spacer(), 
      ],
    ),
    actions: actions,
  );
}
