// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromRGBO(12, 15, 20, 1),
          centerTitle: true,
          title: Text(
            "Change Password",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(12, 15, 20, 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(61, 158, 158, 158),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your new Password",
                      hintStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(61, 158, 158, 158),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Confirm your Password",
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (Route<dynamic> route) => false);
                      },
                      child: Text("Confirm"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
