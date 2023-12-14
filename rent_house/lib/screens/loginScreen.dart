// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../widgets/registerLoginScreenItem.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Color.fromRGBO(12, 15, 20, 1),
            centerTitle: true,
            title: Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(12, 15, 20, 1),
            ),
            child: Center(
              child: LoginItem(
                  title: "Email",
                  placeholder: "Enter your Email",
                  title2: "Password",
                  placeholder2: "Enter your Password",
                  buttonText: "Login"),
            ),
          ),
        ),
      ),
    );
  }
}
