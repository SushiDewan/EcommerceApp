import 'package:ecommerceapp/core/widgets/build_button.dart';
import 'package:ecommerceapp/core/widgets/text_field.dart';
import 'package:ecommerceapp/core/widgets/txt_button.dart';
import 'package:ecommerceapp/features/dashboard/presentation/pages/dashboardpage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _nameController = TextEditingController();

  bool _isLoading = false;

  void _handleLogin() async {
    setState(() {
      _isLoading = true;
    });
    var data = {
      'name': _nameController.text,
      'email': _emailController.text,
      'password': _passwordController.text,
    };
    var url = Uri.parse('http://w3cart2.w-3.in/api/v1/auth/signup');
    var response = await http.post(url, body: data);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
          msg: response.body,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12.0);

      Navigator.pop(context);
    } else {
      setState(() {
        _isLoading = false;
      });

      Fluttertoast.showToast(
          msg: response.body,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 12.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // fit: StackFit.expand,
        children: [
          Flexible(
            flex: 3,
            // alignment: Alignment.topCenter,
            // heightFactor: 0.35,
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
          Flexible(
            // alignment: Alignment.bottomCenter,
            flex: 7,
            child: SingleChildScrollView(
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30, top: 50),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Register",
                      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
                    ),
                    SizedBox(height: 50),
                    TxtField(
                      txtEditingController: _nameController,
                      hintText: "Name",
                      leading: Icons.person,
                    ),
                    SizedBox(height: 20),
                    TxtField(txtEditingController: _emailController, hintText: "Email", leading: Icons.mail),
                    SizedBox(height: 20),
                    TxtField(
                      hintText: "Password",
                      txtEditingController: _passwordController,
                      leading: Icons.lock,
                      obscureText: true,
                    ),
                    SizedBox(height: 50),
                    BuildButton(title: _isLoading ? "creating.." : "Register", onTap: _isLoading ? null : _handleLogin),
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
