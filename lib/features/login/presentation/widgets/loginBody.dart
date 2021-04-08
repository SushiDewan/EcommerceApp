import 'package:ecommerceapp/core/widgets/build_button.dart';
import 'package:ecommerceapp/core/widgets/text_field.dart';
import 'package:ecommerceapp/core/widgets/txt_button.dart';
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
            child:  Center(
                child:Icon(Icons.person, size: 120,color: Colors.white,)
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
              padding: EdgeInsets.only(left: 30.0, right: 30, top: 50),
              child: Column(children: [
                Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
                ),
                SizedBox(height: 50),
                TxtField(
                  hintText: "Email",
                  leading: Icons.person,
                ),
                SizedBox(height: 20),
                TxtField(
                  hintText: "Password",
                  leading: Icons.lock,
                  obscureText: true,
                ),
                SizedBox(height: 20),
                TxtButton(
                  text2: "Forget Password?",
                  onTap: () {},
                ),
                SizedBox(height: 50),
                BuildButton(
                    title: "Login",
                    onTap: () {
                      Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 400),
                                pageBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation) {
                                  return DashboardPage();
                                },
                                transitionsBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation,
                                    Widget child) {
                                  return Align(
                                    child: SlideTransition(
                                      position: Tween(
                                              begin: Offset(1.0, 0.0),
                                              end: Offset(0.0, 0.0))
                                          .animate(animation),
                                      child: child,
                                    ),
                                  );
                                },
                              ),
                            );
                    }),
                SizedBox(height: 20),
                TxtButton(
                  text1: "Don't have an Account?",
                  text2: " Register",
                  onTap: () {
                   Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 400),
                                pageBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation) {
                                  return Register();
                                },
                                transitionsBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation,
                                    Widget child) {
                                  return Align(
                                    child: SlideTransition(
                                      position: Tween(
                                              begin: Offset(1.0, 0.0),
                                              end: Offset(0.0, 0.0))
                                          .animate(animation),
                                      child: child,
                                    ),
                                  );
                                },
                              ),
                            );
                  },
                )
              ]),
            ),
          ),
        )
      ],
    );
  }
}
