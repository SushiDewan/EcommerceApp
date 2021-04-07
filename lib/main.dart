import 'package:ecommerceapp/features/login/presentation/pages/loginpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:HomePage(), 
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final Future<FirebaseApp> _initialize = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialize,
      builder: (context, snapshot){
        if (snapshot.hasError){
          return Scaffold(body:Text("error"));
        }
        if(snapshot.connectionState==ConnectionState.done){
          return LoginPage();
        }
        else{
          return CircularProgressIndicator();
        }
      },
      
    );
  }
}