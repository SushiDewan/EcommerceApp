
import 'package:ecommerceapp/core/widgets/text_field.dart';
import 'package:ecommerceapp/features/login/presentation/pages/loginpage.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
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
                child: Text("Register",
                    style:
                       TextStyle(color:Colors.white, fontSize: 35, fontWeight: FontWeight.w700)),
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
                padding: EdgeInsets.only(left: 20.0, right: 20, top: 100),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       TxtField(
                  hintText: "Email",
                  leading: Icons.person,
                ),
                SizedBox(height: 20),
                TxtField(
                  hintText: "Password",
                  leading: Icons.lock,
                ),
                      SizedBox(height: 20),
                     TxtField(
                  hintText: "Confirm Password",
                  leading: Icons.lock,
                ),
                      SizedBox(height: 50),
                      MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          )),
                      SizedBox(height: 20),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                text: "Already have an account?",
                                children: [
                                  TextSpan(
                                    text: " Login",
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
      ),
    );
  }
}
