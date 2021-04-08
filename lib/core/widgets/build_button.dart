import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final Function onTap;
  final String title;

  BuildButton({this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
          child: MaterialButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        height: 50,
        minWidth: 180,
        color: Theme.of(context).primaryColor,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Icon(Icons.keyboard_arrow_right, size: 27,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
