import 'package:ecommerceapp/core/widgets/text_field.dart';
import 'package:ecommerceapp/features/dashboard/presentation/pages/dashboardpage.dart';
import 'package:ecommerceapp/features/login/presentation/widgets/register.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        FractionallySizedBox(
          alignment: Alignment.topCenter,
          heightFactor: 0.35,
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Text("Login",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
            ),
          ),
        ),
        FractionallySizedBox(
          alignment: Alignment.bottomCenter,
          heightFactor: 0.7,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20, top: 120),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                TxtField(
                  hintText: "Email",
                  leading: Icons.person,
                ),
                SizedBox(height: 20),
                TxtField(
                  hintText: "Password",
                  leading: Icons.lock,
                ),
                SizedBox(height:20),
                Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {},
              child: Text(
                "Forget Password?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
                SizedBox(height: 50),
                MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashboardPage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(height: 20),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          text: "Don't have an Account?",
                          children: [
                            TextSpan(
                              text: " Register",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w700),
                            )
                          ]),
                    ))
              ]),
            ),
          ),
        )
      ],
    );
  }
}
