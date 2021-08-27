import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final VoidCallback onPressed;
  final String title;
  final Color backgroundColor;
  final Color titleColor;
  final double height;
  final double radius;
  CustomButton(
      {required this.width, required this.onPressed, required this.title,required this.backgroundColor,required this.titleColor, required this.height, this.radius = 10});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      textColor: Colors.white,
      color: backgroundColor,
      child: SizedBox(
        width: width,
        child: Text(
          title,
          style: TextStyle(fontSize: 15,color: titleColor,fontFamily: "OpenSans"),
          textAlign: TextAlign.center,
        ),
      ),
      height: height,
      // minWidth: 600,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius))),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
