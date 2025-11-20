import 'package:flutter/material.dart';
class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key, required this.txtColor, required this.backGroundColor, required this.txt, this.borderRadius});
  final Color txtColor;
  final Color backGroundColor;
  final String txt;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, width: double.infinity,
      child: TextButton(
        onPressed: (){},
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(16)),
          backgroundColor: backGroundColor,
        ),
        child: Text( txt , style: TextStyle(color: txtColor , fontSize: 20 , ),),
      ),
    );
  }
}