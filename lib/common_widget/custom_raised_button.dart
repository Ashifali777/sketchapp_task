import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    required this.text,
    required this.color,
    this.borderRadius: 20.0,
    this.height: 50.0,
    required this.onPressed,
  }) ;
  final String text;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      // ignore: deprecated_member_use
      child: RaisedButton(
        child: Text(text,
        style: TextStyle(color: Colors.blue.shade200),),
        color: color,
        disabledColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
