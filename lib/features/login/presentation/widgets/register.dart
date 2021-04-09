
import 'package:ecommerceapp/core/widgets/build_button.dart';
import 'package:ecommerceapp/core/widgets/text_field.dart';
import 'package:ecommerceapp/core/widgets/txt_button.dart';
import 'package:ecommerceapp/features/dashboard/presentation/pages/dashboardpage.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  bool _isLoading = false;

 void _handleLogin(){
   setState((){
     _isLoading=  true;

   });
   var data ={
     'name' : _nameController.text,
     'email' : _emailController.text,
     'password' : _passwordController.text,
   };
 }
  
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
            child: SingleChildScrollView(
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
                          txtEditingController: _nameController,
                          hintText: "Name",
                          leading: Icons.person,
                        ),
                        SizedBox(height: 20),
                        TxtField(
                            txtEditingController: _emailController,
                            hintText: "Email",
                            leading: Icons.mail),
                        SizedBox(height: 20),
                        TxtField(
                          hintText: "Password",
                          txtEditingController: _passwordController,
                          leading: Icons.lock,
                        ),
                        SizedBox(height: 50),
                        BuildButton(
                          title: _isLoading ? "creating.." : "Register",
                          onTap: _isLoading ? null : _handleLogin
                            //  String email =  _emailController.text ;
                            //  String password = _passwordController.text;
                            //  String namepass = _nameController.text;
                            //  print(email);
                            //  print(password);
                            //  print(namepass);
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
            ),
          )
        ],
      ),
    );
  }
}
