import 'package:ecommerceapp/core/widgets/build_button.dart';
import 'package:ecommerceapp/core/widgets/text_field.dart';
import 'package:ecommerceapp/core/widgets/txt_button.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.35,
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Center(
                  child: Icon(
                Icons.person,
                size: 120,
                color: Colors.white,
              )),
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 30),
                      ),
                      SizedBox(height: 50),
                      TxtField(
                        txtEditingController: _emailController,
                        hintText: "Email",
                        leading: Icons.person,
                      ),
                      SizedBox(height: 20),
                      TxtField(
                        hintText: "Password",
                        txtEditingController: _passwordController,
                        leading: Icons.lock,
                      ),
                      SizedBox(height: 20),
                      TxtField(
                        txtEditingController: _confirmController,
                        hintText: "Confirm Password",
                        leading: Icons.lock,
                      ),
                      SizedBox(height: 50),
                      BuildButton(
                        title: "Register",
                        onTap: () {},
                      ),
                      SizedBox(height: 20),
                      TxtButton(
                        text1: "Already Have an account?",
                        text2: " Login",
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
