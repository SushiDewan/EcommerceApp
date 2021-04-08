import 'package:flutter/material.dart';

class TxtButton extends StatelessWidget {
  final String text1;
  final String text2;
  final Function onTap;

  TxtButton({this.onTap, this.text1, this.text2});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(onTap: onTap, child: RichText(
        text: TextSpan(
          text:text1,
          style: TextStyle(color:Colors.black, fontWeight: FontWeight.w600, fontSize: 13),
          children: [
            TextSpan(
              text: text2,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: Theme.of(context).primaryColor))
            ]
        ),
      ),
    ));
  }
}