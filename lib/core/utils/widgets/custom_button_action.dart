import 'package:flutter/material.dart';
class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key, required this.txtColor, required this.backGroundColor, required this.txt, this.borderRadius, this.onPressed});
  final Color txtColor;
  final Color backGroundColor;
  final String txt;
  final BorderRadius? borderRadius;
  final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(16)),
          backgroundColor: backGroundColor,
        ),
        child: Text( txt , style: TextStyle(color: txtColor , fontSize: 20 , ),),
      ),
    );
  }
}