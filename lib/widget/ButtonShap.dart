import 'package:flutter/material.dart';

class ButtonShap extends StatelessWidget {
  final VoidCallback onPressed;
  final double paddingVertical;
  final double width;
  final double height;
  final double borderRadius;
  final Color backgroundColor;
  final Widget child;

  const ButtonShap({
    Key? key,
    required this.onPressed,
    required this.child,
    this.paddingVertical = 10.0,
    this.width = double.infinity, 
    this.height = 45.0, 
    this.borderRadius = 10.0,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: EdgeInsets.symmetric(vertical: paddingVertical),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: child,
      ),
    );
  }
}
