import 'package:flutter/material.dart';

class DashboardBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Column(children: [
        Text("Dashboard"),
        SizedBox(
          height: 30,
        ),
        MaterialButton(color: Colors.red,onPressed: (){}, child: Text("Upload product"),)
      ]),
    );
  }
}
